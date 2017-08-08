package org.etrick.server.web.controller.admin;

import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.etrick.server.comm.annotation.LogHead;
import org.etrick.server.comm.annotation.Power;
import org.etrick.server.comm.base.BaseLogger;
import org.etrick.server.comm.constant.CacheFinal;
import org.etrick.server.comm.entity.BeanEntity;
import org.etrick.server.comm.entity.CacheEntity;
import org.etrick.server.comm.entity.CtBeanEntity;
import org.etrick.server.comm.entity.CtClassEntity;
import org.etrick.server.comm.entity.CtMethodEntity;
import org.etrick.server.comm.entity.MonitorEntity;
import org.etrick.server.comm.entity.MsgEntity;
import org.etrick.server.comm.entity.WsFileEntity;
import org.etrick.server.comm.util.AspectUtil;
import org.etrick.server.comm.util.FileUtils;
import org.etrick.server.comm.util.PrintException;
import org.etrick.server.comm.util.PropertUtil;
import org.etrick.server.comm.util.SimpleUtil;
import org.etrick.server.comm.util.SpringContextHelper;
import org.etrick.server.comm.util.StringUtil;
import org.etrick.server.handle.cache.LocalCache;
import org.etrick.server.handle.controller.BaseController;
import org.etrick.server.handle.system.SystemHandle;
import org.etrick.server.web.service.IpService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

@Controller
@RequestMapping("/admin/simple")
@SuppressWarnings("unchecked")
public class ASimpleController extends BaseController {

	static BaseLogger logger = BaseLogger.getLogger(StringUtil.class);
	@Resource
	IpService ipService;

	@RequestMapping(value = "/index")
	@Power("index")
	@LogHead("系统状态")
	public String index(HttpServletRequest req, HttpServletResponse res) {
		String ip = ipService.getIp(req.getRequestURL().toString());
		setAttribute("serverIp", ip);
		setAttribute("cpuInfos", SystemHandle.getCpuInfos());
		setAttribute("diskInfos", SystemHandle.getDiskInfos());
		setAttribute("netInfos", SystemHandle.getNetModels());
		return "/admin/simple/index";
	}

	@SuppressWarnings("deprecation")
	@RequestMapping(value = "/resources")
	@Power("resources")
	@LogHead("资源管理")
	public String resources(HttpServletRequest req, HttpServletResponse res) {
		String path = getPara("file");
		if (StringUtil.isNullOrEmpty(path)) {
			path = Thread.currentThread().getContextClassLoader().getResource("").getPath();
		}
		path = new File(path).getPath().replace("\\", "/");
		String basePath = Thread.currentThread().getContextClassLoader().getResource("").getPath();
		basePath = new File(basePath).getPath().replace("\\", "/");
		basePath = URLDecoder.decode(basePath);
		path = URLDecoder.decode(path);
		if (!path.startsWith(basePath)) {
			return "/admin/simple/resources";
		}
		File[] files = new File(path).listFiles();
		List<WsFileEntity> fileEntitys = FileUtils.parseWsFile(files);
		fileEntitys = PropertUtil.doSeqDesc(fileEntitys, "suffix");
		fileEntitys = PropertUtil.doSeq(fileEntitys, "path");
		fileEntitys = PropertUtil.doSeq(fileEntitys, "type");
		setAttribute("files", fileEntitys);
		String currFile = new File(path).getPath() + "/";
		if (SimpleUtil.isWindows()) {
			currFile = currFile.replace("/", "\\");
		}
		setAttribute("currFile", currFile);
		setAttribute("parentFile", new File(path).getParent());
		keepParas();
		return "/admin/simple/resources";
	}

	@RequestMapping(value = "/resourcesInfo")
	@Power("resources")
	@LogHead("资源管理-文件详情")
	public String resourcesInfo(HttpServletRequest req, HttpServletResponse res) {
		loadClassEntity();
		return "/admin/simple/resources_info";
	}
	
	@RequestMapping(value = "/modifyField")
	@Power("resources")
	@ResponseBody
	@LogHead("资源管理-字段值修改")
	public Object modifyField(HttpServletRequest req, HttpServletResponse res) {
		CtClassEntity clazz = loadClassEntity();
		String fieldName = getPara("fieldName");
		String value = getPara("fieldValue");
		Object bean = null;
		try {
			bean = SpringContextHelper.getBean(clazz.getSourceClass());
		} catch (Exception e) {
			// TODO: handle exception
		}
		for (CtBeanEntity field : clazz.getFields()) {
			try {
				if (field.getFieldName().equals(fieldName)) {
					Field sourceField = field.getSourceField();
					sourceField.setAccessible(true);
					try {
						Field modifiersField = Field.class.getDeclaredField("modifiers");
						modifiersField.setAccessible(true);
						modifiersField.set(sourceField, sourceField.getModifiers() & ~Modifier.FINAL);
					} catch (Exception e) {
						PrintException.printException(logger, e);
					}
					if (field.getIsStatic() == true) {
						bean = null;
					}
					sourceField.set(bean, PropertUtil.parseValue(value, field.getFieldType()));
					return new MsgEntity(0, "操作成功");
				}
			} catch (Exception e) {
				PrintException.printException(logger, e);
				return new MsgEntity(-1, "修改失败");
			}
		}
		return new MsgEntity(-1, "字段不存在");
	}

	@RequestMapping(value = "/monitorList")
	@Power("monitorSetting")
	public String monitorList(HttpServletRequest req, HttpServletResponse res) {
		/**
		 * 加载我的监听列表
		 */
		List<String> keys = LocalCache.getKeysFuzz(CacheFinal.SYSTEM_RUN_INFO);
		setAttribute("keys", keys);
		return "/admin/simple/monitor_list";
	}
	@RequestMapping(value = "/monitorInfo")
	@Power("monitorSetting")
	public String monitorInfo(HttpServletRequest req, HttpServletResponse res) {
		keepParas();
		String key = getPara("key");
		if (StringUtil.isNullOrEmpty(key)) {
			return "redirect:" + req.getAttribute("basePath") + "admin/simple/resources";
		}
		Method sourceMethod = SimpleUtil.getMethodByKey(key);
		getFileByMethod(sourceMethod);
		CtClassEntity classInfo = SimpleUtil.getClassEntity(PropertUtil.getClass(sourceMethod));
		CtMethodEntity method = (CtMethodEntity) PropertUtil.getByList(classInfo.getMethods(), "key", key);
		setAttribute("method", method);
		setAttribute("isRun", 0);
		if (LocalCache.contains(key)) {
			setAttribute("isRun", 1);
			List<MonitorEntity> monitors = (List<MonitorEntity>) LocalCache.getCache(key);
			monitors = PropertUtil.doSeqDesc(monitors, "runTime");
			setAttribute("monitors", monitors);
		}
		setAttribute("classInfo", classInfo);
		/**
		 * 初始化方法参数
		 */
		Object obj = SimpleUtil.initMethodParas(method.getSourceMethod());
		String initParas = JSON.toJSONString(obj);
		setAttribute("initParas", initParas);
		return "/admin/simple/monitor_info";
	}

	
	@RequestMapping(value = "/monitorDebug")
	@Power("resources")
	@LogHead("资源管理-方法调试")
	@ResponseBody
	public Object monitorDebug(HttpServletRequest req, HttpServletResponse res) {
		keepParas();
		String key = getPara("key");
		String runData = getPara("input");
		Method method = SimpleUtil.getMethodByKey(key);
		if (method == null) {
			return new MsgEntity(-1, "方法未找到");
		}
		method.setAccessible(true);
		Object[] paras = null;
		if (!StringUtil.isNullOrEmpty(runData)) {
			paras = JSON.parseObject(runData, Object[].class);
		}
		List<BeanEntity> entitys = PropertUtil.getMethodParas(method);
		if (!StringUtil.isNullOrEmpty(paras)) {
			if (paras.length != entitys.size()) {
				return new MsgEntity(-1, "参数数量有误");
			}
			for (int i = 0; i < paras.length; i++) {
				BeanEntity entity = entitys.get(i);
				Object value = null;
				try {
					value = PropertUtil.parseValue(paras[i], entity.getFieldType());
					if (JSONObject.class.isAssignableFrom(value.getClass())) {
						value = JSON.parseObject(paras[i].toString(), entity.getFieldType());
					}
				} catch (Exception e) {
					PrintException.printException(logger, e);
				}
				paras[i] = value;
			}
		}
		try {
			AspectUtil.createDebugKey(key);
			Class<?> clazz = PropertUtil.getClass(method);
			if (Modifier.isStatic(method.getModifiers())) {
				Object result = method.invoke(null, paras);
				return new MsgEntity(0, "操作成功", JSON.toJSONString(result));
			}
			Object bean = SpringContextHelper.getBean(clazz);
			if (!StringUtil.isNullOrEmpty(bean)) {
				Class<?> sourceClass = SimpleUtil.getMethodClassByKey(key);
				if (!sourceClass.getName().equals(bean.getClass().getName())) {
					bean = sourceClass.cast(bean);
					PropertUtil.setProperties(method, "clazz", sourceClass);
				}
				Object result = method.invoke(bean, paras);
				return new MsgEntity(0, "操作成功", JSON.toJSONString(result));
			}
			bean = clazz.newInstance();
			Class<?> sourceClass = SimpleUtil.getMethodClassByKey(key);
			if (!sourceClass.getName().equals(bean.getClass().getName())) {
				bean = sourceClass.cast(bean);
				PropertUtil.setProperties(method, "clazz", sourceClass);
			}
			Object result = method.invoke(bean, paras);
			return new MsgEntity(0, "操作成功", JSON.toJSONString(result));
		} catch (Exception e) {
			PrintException.printException(logger, e);
			return new MsgEntity(-1, "执行出错", PrintException.getErrorStack(e));
		} finally {
			AspectUtil.cleanDebugKey();
		}
	}


	@RequestMapping(value = "/startMonitor")
	@Power("resources")
	@LogHead("资源管理-服务监听")
	@ResponseBody
	public Object startMonitor(HttpServletRequest req, HttpServletResponse res) {
		String key = getPara("key");
		Integer isRun = getParaInteger("isRun");
		keepParas();
		if (StringUtil.findNull(key, isRun) > -1) {
			return new MsgEntity(-1, "参数有误");
		}
		Class<?> clazz = PropertUtil.getClass(SimpleUtil.getMethodByKey(key));
		if (StringUtil.isNullOrEmpty(clazz)) {
			return new MsgEntity(-1, "该方法不能监听");
		}
		Object bean = SpringContextHelper.getBean(clazz);
		if (StringUtil.isNullOrEmpty(bean)) {
			return new MsgEntity(-1, "该方法不能监听,未找到Bean");
		}
		if (1 == isRun) {
			LocalCache.setCache(key, new ArrayList<MonitorEntity>());
		} else {
			LocalCache.delCache(key);
		}
		return new MsgEntity(0, "操作成功");
	}

	

	@SuppressWarnings("deprecation")
	private CtClassEntity loadClassEntity() {
		String path = getPara("file");
		keepParas();
		if (StringUtil.isNullOrEmpty(path)) {
			return null;
		}
		String basePath = Thread.currentThread().getContextClassLoader().getResource("").getPath();
		basePath = new File(basePath).getPath().replace("\\", "/") + "/";
		basePath = URLDecoder.decode(basePath);
		path = path.replace("\\", "/");
		path = URLDecoder.decode(path);
		if (!path.startsWith(basePath)) {
			return null;
		}
		while (path.contains("../")) {
			path = path.replace("../", "");
		}
		if (!path.endsWith(".class")) {
			File file = new File(path);
			if (file.length() < 1048576) {
				String info = FileUtils.readFile(path);
				setAttribute("context", info);
			}
			return null;
		}
		try {
			String packet = path.replace(basePath, "");
			packet = packet.replace("/", ".");
			packet = packet.replace(".class", "");
			Class<?> clazz = Class.forName(packet);
			CtClassEntity classInfo = SimpleUtil.getClassEntity(clazz);
			setAttribute("classInfo", classInfo);
			return classInfo;
		} catch (Exception e) {
			return null;
		}
	}

	private String getFileByMethod(Method method) {
		Class<?> clazz = PropertUtil.getClass(method);
		String file = clazz.getResource("").getFile();
		setAttribute("file", file);
		return file;
	}

	@RequestMapping(value = "/cacheManage")
	@Power("cacheSetting")
	public String cacheManage(HttpServletRequest req, HttpServletResponse res) {
		List<CtBeanEntity> entitys = SimpleUtil.getBeanFields(CacheFinal.class);
		if (!StringUtil.isNullOrEmpty(entitys)) {
			List<CacheEntity> cacheEntitys = PropertUtil.getNewList(entitys, CacheEntity.class);
			for (CacheEntity entity : cacheEntitys) {
				entity.setCacheNum(LocalCache.getKeySizeFuzz(entity.getFieldValue().toString()));
			}
			cacheEntitys = PropertUtil.doSeqDesc(cacheEntitys, "fieldValue");
			setAttribute("entitys", cacheEntitys);
		}
		return "/admin/simple/cache_list";
	}

	@RequestMapping(value = "/cacheClean")
	@Power("cacheSetting")
	@ResponseBody
	public Object cacheClean(HttpServletRequest req, HttpServletResponse res) {
		String key = getPara("key");
		if (StringUtil.isNullOrEmpty(key)) {
			return new MsgEntity(-1, "参数有误");
		}
		LocalCache.delCacheFuzz(key);
		return new MsgEntity(0, "操作成功");
	}
}
