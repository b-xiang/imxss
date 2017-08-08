package org.etrick.server.web.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.etrick.server.comm.annotation.CacheWipe;
import org.etrick.server.comm.annotation.CacheWrite;
import org.etrick.server.comm.constant.CacheFinal;
import org.etrick.server.handle.jdbc.JdbcHandle;
import org.etrick.server.web.domain.SettingInfo;

@Service
public class SettingService {
	@Resource
	JdbcHandle jdbcHandle;
	
	/**
	 * 加载网站设置
	 * @return
	 */
	@CacheWrite(key=CacheFinal.SETTING_INFO,validTime=72000)
	public SettingInfo loadSiteSetting(){
		return jdbcHandle.findBeanFirst(SettingInfo.class,"id",1);
	}
	
	@CacheWipe(key=CacheFinal.SETTING_INFO)
	public Long writeSetting(SettingInfo setting){
		setting.setId(1);
		return jdbcHandle.saveOrUpdateAuto(setting);
	}
	
}
