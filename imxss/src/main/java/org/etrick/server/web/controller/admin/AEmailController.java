package org.etrick.server.web.controller.admin;

import javax.annotation.Resource;

import org.etrick.server.comm.annotation.Power;
import org.etrick.server.comm.entity.MsgEntity;
import org.etrick.server.comm.entity.Pager;
import org.etrick.server.comm.util.EmailSenderUtil;
import org.etrick.server.comm.util.StringUtil;
import org.etrick.server.handle.controller.BaseController;
import org.etrick.server.web.domain.EmailInfo;
import org.etrick.server.web.service.EmailService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/admin/email")
@Controller
public class AEmailController extends BaseController{

	

	@Resource
	EmailService emailService;
	
	@RequestMapping("/emailManage")
	@Power("emailManage")
	public String emailManage(){
		Pager pager=getBeanAll(Pager.class);
		pager=emailService.loadEmails(pager,getPara("keyWorld"));
		setAttribute("dataPager", pager);
		keepParas();
		return "admin/email/email_list";
	}
	
	@RequestMapping("/emailEdit")
	@Power("emailManage")
	public String emailEdit(){
		Integer id=getParaInteger("id");
		EmailInfo emailInfo=emailService.loadEmailInfo(id);
		setAttribute("email", emailInfo);
		keepParas();
		return "admin/email/email_edit";
	}
	
	@RequestMapping("/emailSave")
	@Power("emailManage")
	@ResponseBody
	public Object emailSave(){
		EmailInfo emailInfo=getBeanAll(EmailInfo.class);
		if(StringUtil.hasNull(emailInfo.getSmtp(),emailInfo.getEmail(),emailInfo.getPassword())){
			return new MsgEntity(-1,"参数有误");
		}
		if(!EmailSenderUtil.connectionTest(emailInfo.getSmtp(), emailInfo.getEmail(), emailInfo.getPassword())){
			return new MsgEntity(-1,"smtp连接失败");
		}
		Long code=emailService.saveEmailInfo(emailInfo);
		if(code<1){
			return new MsgEntity(-1,"操作失败");
		}
		return new MsgEntity(0,"操作成功");
	}
	
	@RequestMapping("/emailDel")
	@Power("emailManage")
	@ResponseBody
	public Object emailDel(Integer id){
		Long code=emailService.delEmailInfo(id);
		if(code<1){
			return new MsgEntity(-1,"操作失败");
		}
		return new MsgEntity(0,"操作成功");
	}
}
