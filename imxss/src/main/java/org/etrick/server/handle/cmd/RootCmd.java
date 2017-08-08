package org.etrick.server.handle.cmd;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.InitializingBean;

import com.alibaba.fastjson.JSON;
import org.etrick.server.comm.annotation.ApiHandle;
import org.etrick.server.comm.annotation.MergeApi;
import org.etrick.server.comm.base.BaseLogger;
import org.etrick.server.comm.base.BaseRespVO;
import org.etrick.server.comm.enm.ResCodeEnum;
import org.etrick.server.comm.entity.Header;
import org.etrick.server.comm.util.CmdUtil;
import org.etrick.server.comm.util.PrintException;
import org.etrick.server.comm.util.PropertUtil;
import org.etrick.server.comm.util.SpringContextHelper;
import org.etrick.server.comm.util.StringUtil;

public abstract class RootCmd implements InitializingBean{

	protected final BaseLogger logger = BaseLogger.getLogger(this.getClass());

	protected static final String encode = "UTF-8";

	// 初始化接口
	private Map<String, Method> apiMap = new HashMap<String, Method>();

	public Method getAPIMethod(String action) {
		return apiMap.get(action);
	}

	public String execute(Header header,String body) {
		if(header==null||header.getCmd()==null||header.getAction()==null){
			return new BaseRespVO(ResCodeEnum.ACTION_NOT_FOUND).toJson();
		}
		Object result = doActions(header, body);
		return JSON.toJSONString(result);
	}

	public Object doActions(Header header, String json) {
		Object baseResult = doAction(header, header.getCmd(), header.getAction(), json);
		return baseResult;
	}

	public Object doAction(Header header, String cmd, String action, String json) {
		Object result = null;
		AppCmd api = SpringContextHelper.getBean(cmd);
		Method method = api.getAPIMethod(action);
		if (method == null) {
			return new BaseRespVO(ResCodeEnum.ACTION_NOT_FOUND);
		}
		try {
			if(json==null){
				json="";
			}
			// 参数验证
			Object para = CmdUtil.getAPIParas(method, json, header);
			Object[] paras = null;
			if (para != null) {
				if (BaseRespVO.class.isAssignableFrom(para.getClass())) {
					result = para;
					return result;
				}
				if (para instanceof Object[]) {
					paras = (Object[]) para;
				}
			}
			// 方法执行
			result = method.invoke(api, paras);
			return result;
		} catch (Exception e) {
			PrintException.printException(logger, e);
			result = new BaseRespVO(ResCodeEnum.SYSTEM_ERROR);
			return result;
		} finally {
			// 接口合并
			MergeApi[] merges = method.getAnnotationsByType(MergeApi.class);
			if (!StringUtil.isNullOrEmpty(merges)) {
				Map<String, Object> resultMap = PropertUtil.beanToMap(result);
				if (resultMap == null) {
					resultMap = new HashMap<String, Object>();
				}
				for (MergeApi tmpApi : merges) {
					try {
						if (tmpApi.cmd().equals(cmd) && tmpApi.action().equals(action)) {
							continue;
						}
						Object aActionResult = doAction(header, tmpApi.cmd(), tmpApi.action(), json);
						resultMap.put(tmpApi.action(), aActionResult);
					} catch (Exception e) {
						PrintException.printException(logger, e);
					}
				}
				return resultMap;
			}
		}
	}
	@Override
	public void afterPropertiesSet() throws Exception {
		Method[] methods = this.getClass().getDeclaredMethods();
		for (Method method : methods) {
			ApiHandle api = method.getAnnotation(ApiHandle.class);
			if (StringUtil.isNullOrEmpty(api)) {
				continue;
			}
			String apiName = api.value();
			if (StringUtil.isNullOrEmpty(apiName)) {
				apiName = method.getName();
			}
			method.setAccessible(true);
			logger.info("初始化接口:" + method.getClass().getName() + "." + apiName);
			apiMap.put(apiName, method);
		}
	}
}
