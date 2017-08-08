package org.etrick.server.web.controller.user;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.etrick.server.comm.util.PropertUtil;
import org.etrick.server.handle.controller.BaseController;
import org.etrick.server.web.domain.EmailInfo;
import org.etrick.server.web.service.EmailService;
import org.etrick.server.web.service.SettingService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class UIndexController extends BaseController {

	@Resource
	EmailService emailService;

	@Resource
	SettingService settingService;

	@RequestMapping("/index")
	public String index(HttpServletResponse res) {
		return "index";
	}

	@RequestMapping("/login")
	public String login(HttpServletResponse res) {
		return "login";
	}

	@RequestMapping("/reg")
	public String reg(HttpServletResponse res) {
		// 加载发信邮箱列表
		List<EmailInfo> emails = emailService.loadEmails();
		emails=PropertUtil.doSeq(emails, "email");
		setAttribute("emails", emails);
		return "reg";
	}
	
	@RequestMapping("/resetPwd")
	public String resetPwd() {
		return "reset_pwd";
	}
}
