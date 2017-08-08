package org.etrick.server.web.controller.user;

import javax.annotation.Resource;

import org.etrick.server.comm.annotation.Power;
import org.etrick.server.comm.entity.Pager;
import org.etrick.server.handle.controller.BaseController;
import org.etrick.server.web.service.EmailService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/email")
public class UEmailController extends BaseController{

	
	@Resource
	EmailService emailService;
	
	@RequestMapping("/emailCenter")
	@Power("emailCenter")
	public String emailCenter(){
		Pager pager=getBeanAll(Pager.class);
		pager=emailService.loadEmails(pager,getPara("keyWorld"));
		setAttribute("dataPager", pager);
		keepParas();
		return "user/email/email_list";
	}
	
}
