package org.etrick.server.web.controller.admin;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.etrick.server.comm.annotation.Power;
import org.etrick.server.comm.entity.MsgEntity;
import org.etrick.server.comm.entity.Pager;
import org.etrick.server.comm.util.JUUIDUtil;
import org.etrick.server.comm.util.PropertUtil;
import org.etrick.server.comm.util.StringUtil;
import org.etrick.server.handle.controller.BaseController;
import org.etrick.server.web.domain.InviteInfo;
import org.etrick.server.web.domain.UserInfo;
import org.etrick.server.web.schema.InviteSchema;
import org.etrick.server.web.service.InviteService;
import org.etrick.server.web.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/admin/invite")
@Controller
public class AInviteController extends BaseController {

	@Resource
	InviteService inviteService;
	@Resource
	UserService userService;

	@RequestMapping("/createInvite")
	@ResponseBody
	@Power("inviteManage")
	public Object createInvite() {
		for (int i = 0; i < 20; i++) {
			InviteInfo inviteInfo = new InviteInfo();
			inviteInfo.setStatus(0);
			inviteInfo.setInviteCode(JUUIDUtil.createUuid());
			inviteInfo.setUpdateTime(new Date());
			inviteService.writeInvite(inviteInfo);
		}
		return new MsgEntity(0, "生成成功");
	}

	@RequestMapping("/inviteManage")
	@Power("inviteManage")
	public String inviteManage() {
		Pager pager = getBeanAll(Pager.class);
		pager.setPageSize(10);
		pager = inviteService.loadInvites(pager, getPara("keyWorld"));
		if (!StringUtil.isNullOrEmpty(pager.getData())) {
			List<InviteSchema> invites = PropertUtil.getNewList((List<?>) pager.getData(), InviteSchema.class);
			for(InviteSchema schema:invites){
				if(schema.getStatus()==0||StringUtil.isNullOrEmpty(schema.getUserId())){
					continue;
				}
				
				UserInfo user=userService.loadUserInfo(schema.getUserId());
				if(!StringUtil.isNullOrEmpty(user)){
					schema.setRegUserEmail(user.getEmail());
				}
			}
			pager.setData(invites);
		}
		setAttribute("dataPager", pager);
		keepParas();
		return "admin/invite/invite_list";
	}
}
