package org.etrick.server.web.controller.admin;

import javax.annotation.Resource;

import org.etrick.server.comm.annotation.Power;
import org.etrick.server.comm.entity.MsgEntity;
import org.etrick.server.handle.controller.BaseController;
import org.etrick.server.web.domain.SettingInfo;
import org.etrick.server.web.service.SettingService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/admin/setting")
@Controller
public class ASettingController extends BaseController{

	@Resource
	SettingService settingService;
	
	
	@RequestMapping("/settingManage")
	@Power("settingManage")
	public String settingManage(){
		return "admin/setting/setting";
	}
	
	@RequestMapping("/settingSave")
	@Power("settingManage")
	@ResponseBody
	public Object settingSave(){
		SettingInfo setting=getBeanAll(SettingInfo.class);
		Long code=settingService.writeSetting(setting);
		if(code<1){
			return new MsgEntity(-1,"操作失败");
		}
		return new MsgEntity(0,"操作成功");
	}
}
