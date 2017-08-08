package org.etrick.server.aspect;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.etrick.server.comm.annotation.CacheWipe;
import org.etrick.server.comm.annotation.CacheWrite;
import org.etrick.server.comm.annotation.DateSource;
import org.etrick.server.comm.annotation.Power;
import org.etrick.server.comm.base.BaseLogger;
import org.etrick.server.comm.entity.MonitorEntity;
import org.etrick.server.comm.entity.MsgEntity;
import org.etrick.server.comm.util.AspectUtil;
import org.etrick.server.comm.util.PrintException;
import org.etrick.server.comm.util.PropertUtil;
import org.etrick.server.comm.util.RequestUtil;
import org.etrick.server.comm.util.SimpleUtil;
import org.etrick.server.comm.util.SpringContextHelper;
import org.etrick.server.comm.util.StringUtil;
import org.etrick.server.handle.cache.LocalCache;
import org.etrick.server.web.domain.SysMenus;
import org.etrick.server.web.domain.UserInfo;
import org.etrick.server.web.schema.MenuSchema;
import org.etrick.server.web.service.MenuService;
import org.springframework.stereotype.Component;
import org.springframework.util.StopWatch;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

@Aspect
@Component
public class AppAspect {

	private final BaseLogger logger = BaseLogger.getLoggerPro(this.getClass());
	/**
	 * 新版本迭代控制未测试状态方法,屏蔽报错
	 * 
	 * @param pjp
	 * @return
	 * @throws Throwable
	 */
	@Around("@annotation(org.etrick.server.comm.annotation.DeBug)")
	public Object fDeBugMonitor(ProceedingJoinPoint pjp) throws Throwable {
		StopWatch sw = new StopWatch(getClass().getSimpleName());
		try {
			// AOP启动监听
			sw.start(pjp.getSignature().toShortString());
			try {
				return pjp.proceed();
			} catch (Exception e) {
				PrintException.printException(logger, e);
				return null;
			}
		} finally {
			sw.stop();
		}
	}

	/**
	 * 数据库主从控制
	 * 
	 * @param pjp
	 * @return
	 * @throws Throwable
	 */
	@Around("@annotation(org.etrick.server.comm.annotation.DateSource)")
	public Object eDbMonitor(ProceedingJoinPoint pjp) throws Throwable {
		StopWatch sw = new StopWatch(getClass().getSimpleName());
		try {
			// AOP启动监听
			sw.start(pjp.getSignature().toShortString());
			// AOP获取方法执行信息
			Signature signature = pjp.getSignature();
			MethodSignature methodSignature = (MethodSignature) signature;
			Method method = methodSignature.getMethod();
			DateSource handle = method.getAnnotation(DateSource.class);
			AspectUtil.writeDBTemplate(handle.value());
			return pjp.proceed();
		} finally {
			AspectUtil.minusDBTemplate();
			sw.stop();
		}
	}

	/**
	 * 写缓存操作
	 * @param pjp
	 * @return
	 * @throws Throwable
	 */
	@Around("@annotation(org.etrick.server.comm.annotation.CacheWrite)")
	public Object cCacheWrite(ProceedingJoinPoint pjp) throws Throwable {
		StopWatch sw = new StopWatch(getClass().getSimpleName());
		try {
			// AOP启动监听
			sw.start(pjp.getSignature().toShortString());
			// AOP获取方法执行信息
			Signature signature = pjp.getSignature();
			MethodSignature methodSignature = (MethodSignature) signature;
			Method method = methodSignature.getMethod();
			if (method == null) {
				return pjp.proceed();
			}
			// 获取注解
			CacheWrite handle = method.getAnnotation(CacheWrite.class);
			if (handle == null) {
				return pjp.proceed();
			}
			// 封装缓存KEY
			Object[] paras = pjp.getArgs();
			String key = handle.key();
			try {
				if (StringUtil.isNullOrEmpty(key)) {
					key = AspectUtil.getMethodCacheKey(method);
				}
				if (StringUtil.isNullOrEmpty(handle.fields())) {
					String paraKey=AspectUtil.getBeanKey(paras);
					if(!StringUtil.isNullOrEmpty(paraKey)){
						key += ":";
						key += paraKey;
					}
				}
				if (!StringUtil.isNullOrEmpty(handle.fields())) {
					key = AspectUtil.getFieldKey(method, paras, key,
							handle.fields());
				}
			} catch (Exception e) {
				PrintException.printException(logger, e);
			}
			Integer cacheTimer = ((handle.validTime() == 0) ? 24 * 3600
					: handle.validTime());
			// 获取缓存
			try {
				Object result = LocalCache.getCache(key);
				logger.debug("获取缓存:"+key+",结果:"+result);
				if (!StringUtil.isNullOrEmpty(result)) {
					return result;
				}
			} catch (Exception e) {
				PrintException.printException(logger, e);
			}
			Object result = pjp.proceed();
			if (result != null) {
				try {
					LocalCache.setCache(key, result, cacheTimer);
					logger.debug("设置缓存:"+key+",结果:"+result+",缓存时间:"+cacheTimer);
				} catch (Exception e) {
				}
			}
			return result;
		} finally {
			sw.stop();
		}
	}

	/**
	 * 缓存清理
	 * 
	 * @param pjp
	 * @return
	 * @throws Throwable
	 */
	@Around("@annotation(org.etrick.server.comm.annotation.CacheWipe)||@annotation(org.etrick.server.comm.annotation.CacheWipes)")
	public Object zCacheWipe(ProceedingJoinPoint pjp) throws Throwable {
		StopWatch sw = new StopWatch(getClass().getSimpleName());
		try {
			// 启动监听
			sw.start(pjp.getSignature().toShortString());
			Signature signature = pjp.getSignature();
			MethodSignature methodSignature = (MethodSignature) signature;
			Method method = methodSignature.getMethod();
			if (method == null) {
				return pjp.proceed();
			}
			Object[] paras = pjp.getArgs();
			Object result = pjp.proceed();
			CacheWipe[] handles = method.getAnnotationsByType(CacheWipe.class);
			if (StringUtil.isNullOrEmpty(handles)) {
				return result;
			}
			for (CacheWipe handle : handles) {
				try {
					String key = handle.key();
					if (StringUtil.isNullOrEmpty(handle.key())) {
						key = (AspectUtil.getMethodCacheKey(method));
					}
					if (!StringUtil.isNullOrEmpty(handle.fields())) {
						key = AspectUtil.getFieldKey(method, paras, key,
								handle.fields());
					}
					logger.debug("删除缓存:"+key);
					LocalCache.delCache(key);
				} catch (Exception e) {
					PrintException.printException(logger, e);
				}
			}
			return result;
		} finally {
			sw.stop();
		}
	}

	/**
	 * 日志管理
	 * 
	 * @param pjp
	 * @return
	 * @throws Throwable
	 */
	@Around("@annotation(org.etrick.server.comm.annotation.LogHead)")
	public Object gLoggerMonitor(ProceedingJoinPoint pjp) throws Throwable {
		StopWatch sw = new StopWatch(getClass().getSimpleName());
		try {
			// AOP启动监听
			sw.start(pjp.getSignature().toShortString());
			// AOP获取方法执行信息
			Signature signature = pjp.getSignature();
			MethodSignature methodSignature = (MethodSignature) signature;
			Method method = methodSignature.getMethod();
			Class<?> clazz = PropertUtil.getClass(method);
			String module = AspectUtil.getCurrLog();
			if (!StringUtil.isNullOrEmpty(module)) {
				module += "_";
			}
			String classLog = AspectUtil.getClassLog(clazz);
			if (!StringUtil.isNullOrEmpty(classLog)) {
				module += classLog;
			}
			if (!StringUtil.isNullOrEmpty(module)) {
				module += ".";
			}
			String methodLog = AspectUtil.getMethodLog(method);
			if (!StringUtil.isNullOrEmpty(methodLog)) {
				module += methodLog;
			} else {
				module += method.getName();
			}
			AspectUtil.writeLog(module);
			return pjp.proceed();
		} finally {
			AspectUtil.minusLog();
			sw.stop();
		}
	}

	@SuppressWarnings("unchecked")
	@Around("execution(* org.etrick.server..*.*(..)))")
	public Object aServiceMonitor(ProceedingJoinPoint pjp) throws Throwable {
		StopWatch sw = new StopWatch(getClass().getSimpleName());
		try {
			// AOP启动监听
			sw.start(pjp.getSignature().toShortString());
			// AOP获取方法执行信息
			Signature signature = pjp.getSignature();
			MethodSignature methodSignature = (MethodSignature) signature;
			Class<?> clazz = methodSignature.getDeclaringType();
			Method method = methodSignature.getMethod();
			PropertUtil.setProperties(method, "clazz", clazz);
			String key = SimpleUtil.getMethodKey(method);
			if (LocalCache.contains(key)) {
				Object[] args = pjp.getArgs();
				Date runTime = new Date();
				Object result = null;
				try {
					result = pjp.proceed();
				} catch (Exception e) {
					result=PrintException.getErrorStack(e);
				}
				Date resultTime = new Date();
				try {
					String input = getJson(args);
					String output = getJson(result);
					MonitorEntity entity = new MonitorEntity();
					entity.setInput(input);
					entity.setOutput(output);
					entity.setRunTime(runTime);
					entity.setResultTime(resultTime);
					List<MonitorEntity> entitys = (List<MonitorEntity>) LocalCache
							.getCache(key);
					if (StringUtil.isNullOrEmpty(entitys)) {
						entitys = new ArrayList<MonitorEntity>();
					}
					entitys.add(entity);
					LocalCache.setCache(key, entitys);
				} catch (Exception e) {
					PrintException.printException(logger, e);
				}
				return result;
			}
			Object result = pjp.proceed();
			return result;
		} finally {
			sw.stop();
		}
	}
	
	
	@Around("@annotation(org.etrick.server.comm.annotation.Power)")
	public Object bPpowerMonitor(ProceedingJoinPoint pjp) throws Throwable {
		StopWatch sw = new StopWatch(getClass().getSimpleName());
		try {
			// AOP启动监听
			sw.start(pjp.getSignature().toShortString());
			// AOP获取方法执行信息
			Signature signature = pjp.getSignature();
			MethodSignature methodSignature = (MethodSignature) signature;
			Method method = methodSignature.getMethod();
			if (method == null) {
				return pjp.proceed();
			}
			// 获取注解
			Power handle = method.getAnnotation(Power.class);
			if (handle == null || StringUtil.isNullOrEmpty(handle.value())) {
				return pjp.proceed();
			}
			// 获取当前登陆用户
			UserInfo currMember = RequestUtil.getUser(RequestUtil
					.getRequest());
			if (currMember == null) {
				return printTimeOut(method);
			}
			// 获得当前用户菜单权限
			MenuService menuService = SpringContextHelper
					.getBean(MenuService.class);
			List<SysMenus> menus = menuService.loadSourceMenus(currMember
					.getRoleId());
			List<String> codes = PropertUtil.getFieldValues(menus, "code");
			if (StringUtil.isNullOrEmpty(codes)) {
				logger.info("无权操作:"+method);
				return printPrower(method);
			}
			if (!codes.contains(handle.value())) {
				logger.info("无权操作:"+method);
				return printPrower(method);
			}
			Object result = pjp.proceed();
			//方法执行完毕，刷新菜单
			List<MenuSchema> menuSchemas= menuService.parseMenus(menus);
			RequestUtil.getRequest().setAttribute("menus", menuSchemas);
			return result;
		} finally {
			sw.stop();
		}
	}
	private static Object printTimeOut(Method method) {
		ResponseBody responseBody = method.getAnnotation(ResponseBody.class);
		if (responseBody == null) {
			return "redirect:"+RequestUtil.getRequest().getScheme()+":"+RequestUtil.loadBasePath(RequestUtil.getRequest())+"login."+RequestUtil.getRequest().getSession().getAttribute("defSuffix");
		}
		return new MsgEntity(-1, "登录超时");
	}
	private static Object printPrower(Method method) {
		ResponseBody responseBody = method.getAnnotation(ResponseBody.class);
		if (responseBody == null) {
			return "404";
		}
		return new MsgEntity(-1, "无权操作");
	}

	private static String getJson(Object... args) {
		if (StringUtil.isNullOrEmpty(args)) {
			return "";
		}
		List<Object> newArgs = new ArrayList<Object>();
		for (Object arg : args) {
			Object tmp = arg;
			if (arg != null) {
				if (ServletRequest.class.isAssignableFrom(arg.getClass())
						|| ServletResponse.class.isAssignableFrom(arg
								.getClass())) {
					tmp = arg.getClass();
				}
			}
			newArgs.add(tmp);
		}
		return JSON.toJSONString(newArgs);
	}

	public static void main(String[] args) {
	}
}
