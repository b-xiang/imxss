package org.etrick.server.web.controller.admin;

import java.util.List;

import javax.annotation.Resource;

import org.etrick.server.comm.annotation.Power;
import org.etrick.server.comm.entity.MsgEntity;
import org.etrick.server.comm.entity.Pager;
import org.etrick.server.comm.util.PropertUtil;
import org.etrick.server.comm.util.StringUtil;
import org.etrick.server.handle.controller.BaseController;
import org.etrick.server.web.domain.AddressInfo;
import org.etrick.server.web.domain.LetterInfo;
import org.etrick.server.web.domain.LetterParas;
import org.etrick.server.web.domain.ModuleInfo;
import org.etrick.server.web.domain.ProjectInfo;
import org.etrick.server.web.domain.UserInfo;
import org.etrick.server.web.schema.LetterSchema;
import org.etrick.server.web.service.IpService;
import org.etrick.server.web.service.LetterService;
import org.etrick.server.web.service.ModuleService;
import org.etrick.server.web.service.ProjectService;
import org.etrick.server.web.service.UserService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/admin/letter")
@Controller
public class ALetterController  extends BaseController{

	@Resource
	LetterService letterService;
	@Resource
	ProjectService projectService;
	@Resource
	ModuleService moduleService;
	@Resource
	IpService ipService;
	@Resource
	UserService userService;
	
	

	@RequestMapping("/letterManage")
	@Power("letterManage")
	public String letterManage() {
		Pager pager = getBeanAll(Pager.class);
		pager.setPageSize(12);
		pager = letterService.loadUserLetters(null, pager, getPara("keyWorld"), null);
		List<LetterInfo> letters =pager.getData();
		if(!StringUtil.isNullOrEmpty(letters)){
			List<LetterSchema> schemas = PropertUtil.getNewList(letters, LetterSchema.class);
			for (LetterSchema schema : schemas) {
				try {
					UserInfo user=userService.loadUserInfo(schema.getUserId());
					if(user!=null){
						schema.setUserEmail(user.getEmail());
					}
					ProjectInfo project = projectService.loadProjectInfo(schema.getProjectId());
					if (project != null) {
						schema.setProjectName(project.getTitle());
					}
					AddressInfo info=ipService.loadIpInfo(schema.getIp());
					if(info!=null){
						schema.setIpInfo(info.toString());
					}
				} catch (Exception e) {
				}
			}
			pager.setData(schemas);
		}
		setAttribute("dataPager", pager);
		keepParas();
		return "admin/letter/letter_list";
	}

	@RequestMapping("/letterInfo")
	@Power("letterManage")
	public String letterInfo(Integer letterId) {
		LetterInfo letter = letterService.loadLetterInfo(letterId);
		LetterSchema schema = new LetterSchema();
		BeanUtils.copyProperties(letter, schema);
		// 加载信封项目
		ProjectInfo project = projectService.loadProjectInfo(schema.getProjectId());
		if (project != null) {
			schema.setProjectName(project.getTitle());
			if(letter.getModuleId()==null){
				letter.setModuleId(project.getModuleId());
			}
			ModuleInfo module = moduleService.loadModuleInfo(letter.getModuleId());
			if (module != null) {
				schema.setModuleName(module.getTitle());
			}
		}
		if(schema!=null&&schema.getIp()!=null){
			AddressInfo info=ipService.loadIpInfo(schema.getIp());
			if(info!=null){
				schema.setIpInfo(info.toString());
			}
		}
		setAttribute("letterInfo", schema);
		// 加载信封参数
		List<LetterParas> paras = letterService.loadParas(letterId);
		setAttribute("letterParas", paras);
		return "admin/letter/letter_edit";
	}

	@RequestMapping("/letterDel")
	@Power("letterManage")
	@ResponseBody
	public Object letterDel(Integer id) {
		LetterInfo letter = letterService.loadLetterInfo(id);
		Long code=letterService.delLetterInfo(letter);
		if(code<1){
			return new MsgEntity(-1,"操作失败");
		}
		return new MsgEntity(0,"操作成功");
	}
}
