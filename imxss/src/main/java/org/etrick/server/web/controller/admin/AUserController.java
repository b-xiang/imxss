package org.etrick.server.web.controller.admin;

import javax.annotation.Resource;

import org.etrick.server.comm.annotation.Power;
import org.etrick.server.comm.entity.MsgEntity;
import org.etrick.server.comm.entity.Pager;
import org.etrick.server.comm.util.EncryptUtil;
import org.etrick.server.comm.util.StringUtil;
import org.etrick.server.handle.controller.BaseController;
import org.etrick.server.web.domain.UserInfo;
import org.etrick.server.web.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/admin/user/")
@Controller
public class AUserController extends BaseController{

	@Resource
	UserService userService;
	
	@RequestMapping("/userManage")
	@Power("userManage")
	public String userManage(){
		Pager pager = getBeanAll(Pager.class);
		pager = userService.loadUsers(pager, getPara("keyWorld"));
		setAttribute("dataPager", pager);
		keepParas();
		return "admin/user/user_list";
	}
	
	@RequestMapping("/userEdit")
	@Power("userManage")
	public String userEdit(Integer id){
		UserInfo userInfo=userService.loadUserInfo(id);
		setAttribute("currUser", userInfo);
		return  "admin/user/user_edit";
	}
	
	@RequestMapping("/userSave")
	@ResponseBody
	@Power("userManage")
	public Object userSave(){
		Integer userId=getParaInteger("id");
		UserInfo userInfo=userService.loadUserInfo(userId);
 		userInfo=getBeanRemove(UserInfo.class,"email");
		if(!StringUtil.isNullOrEmpty(getPara("userPwd"))){
			userInfo.setUserPwd(EncryptUtil.customEnCode(userInfo.getUserPwd()));
		}
		Long code=userService.updateUserInfo(userInfo);
		if(code<1){
			return new MsgEntity(-1,"操作失败");
		}
		return  new MsgEntity(0,"操作成功");
	}
	
	@RequestMapping("/userFrozen")
	@ResponseBody
	@Power("userManage")
	public Object userFrozen(Integer id){
		UserInfo userInfo=new UserInfo();
		userInfo.setId(id);
		userInfo.setStatus(1);
		UserInfo userInfoInDb=userService.loadUserInfo(id);
		if(userInfoInDb.getStatus()==1){
			userInfo.setStatus(0);
		}
		Long code=userService.updateUserInfo(userInfo);
		if(code<1){
			return new MsgEntity(-1,"操作失败");
		}
		return  new MsgEntity(0,"操作成功");
	}
}
