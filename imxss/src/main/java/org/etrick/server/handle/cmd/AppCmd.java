package org.etrick.server.handle.cmd;

import com.alibaba.fastjson.JSON;
import org.etrick.server.comm.base.BaseRespVO;
import org.etrick.server.comm.enm.ResCodeEnum;
import org.etrick.server.comm.entity.Header;
import org.etrick.server.comm.util.SpringContextHelper;
import org.etrick.server.comm.util.StringUtil;

/**
 * 面向APP的CMD
 * @author admin
 *
 */
public class AppCmd extends RootCmd {

		public String execute(Header header,String body) {
			logger.debug("命令:" + header.getCmd());
			AppCmd api = (AppCmd) SpringContextHelper.getBean(header.getCmd());
			if (StringUtil.isNullOrEmpty(api)) {
				logger.info("命令不存在:" + header.getCmd());
				return new BaseRespVO(ResCodeEnum.ACTION_NOT_FOUND).toJson();
			}
			Object result = doActions(header, body);
			return JSON.toJSONString(result);
		}

}
