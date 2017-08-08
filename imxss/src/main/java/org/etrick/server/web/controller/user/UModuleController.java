package org.etrick.server.web.controller.user;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.etrick.server.comm.annotation.Power;
import org.etrick.server.comm.entity.MsgEntity;
import org.etrick.server.comm.entity.Pager;
import org.etrick.server.comm.util.RequestUtil;
import org.etrick.server.comm.util.StringUtil;
import org.etrick.server.handle.controller.BaseController;
import org.etrick.server.handle.wrapper.XssHttpServletRequestWrapper;
import org.etrick.server.web.domain.ModuleInfo;
import org.etrick.server.web.domain.UserInfo;
import org.etrick.server.web.service.ModuleService;
import org.etrick.server.web.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user/module")
public class UModuleController extends BaseController{

	@Resource
	UserService userService;
	@Resource
	ModuleService moduleService;
	
	
	@RequestMapping("/moduleCenter")
	@Power("moduleCenter")
	public String moduleCenter(){
		UserInfo userInfo=RequestUtil.getUser(request);
		Pager pager=getBeanAll(Pager.class);
		pager=moduleService.loadUserModules(userInfo.getId(), pager,getPara("keyWorld"));
		setAttribute("dataPager", pager);
		keepParas();
		return "user/module/module_list";
	}
	
	@RequestMapping("/moduleComm")
	@Power("moduleComm")
	public String moduleComm(){
		Pager pager=getBeanAll(Pager.class);
		pager=moduleService.loadCommModules(pager,getPara("keyWorld"));
		setAttribute("dataPager", pager);
		keepParas();		
		return "user/module/module_list";
	}
	

	
	@RequestMapping("/moduleDel")
	@Power("moduleCenter")
	@ResponseBody
	public Object moduleDel(){
		UserInfo userInfo=RequestUtil.getUser(request);
		Integer id=getParaInteger("id");
		ModuleInfo moduleInfo=moduleService.loadModuleInfo(id);
		if(moduleInfo==null||moduleInfo.getUserId()!=userInfo.getId().intValue()){
			return new MsgEntity(-1,"无权操作");
		}
		Long code=moduleService.delModule(moduleInfo);
		if(code<1){
			return new MsgEntity(0,"删除失败");
		}
		return new MsgEntity(0,"删除成功");
	}
	
	@RequestMapping("/moduleEdit")
	@Power("moduleCenter")
	public String moduleEdit(){
		Integer moduleId=getParaInteger("moduleId");
		UserInfo userInfo=RequestUtil.getUser(request);
		if(moduleId!=null){
			ModuleInfo moduleInfo=moduleService.loadModuleInfo(moduleId);
			if(moduleInfo!=null&&moduleInfo.getType()!=1&&moduleInfo.getUserId()!=userInfo.getId().intValue()){
				return "module/module_edit";
			}
			try {
				moduleInfo.setContent(moduleInfo.getContent().replace("<", "&lt;").replace(">", "&gt;"));
			} catch (Exception e) {
				// TODO: handle exception
			}
			setAttribute("moduleInfo", moduleInfo);
		}
		return "user/module/module_edit";
	}
	@RequestMapping("/moduleSave")
	@Power("moduleCenter")
	@ResponseBody
	public Object moduleSave(HttpServletRequest req){
		if(StringUtil.hasNull(getPara("title"),getPara("content"))){
			return new MsgEntity(-1,"参数有误");
		}
		UserInfo userInfo=RequestUtil.getUser(req);
		Integer moduleId=getParaInteger("id");
		ModuleInfo moduleInfo=new ModuleInfo().initModel();
		moduleInfo.setId(null);
		moduleInfo.setUserId(userInfo.getId());
		if(moduleId!=null){
			moduleInfo=moduleService.loadModuleInfo(moduleId);
			if(moduleInfo.getUserId()!=userInfo.getId().intValue()){
				return new MsgEntity(-1,"无权操作");
			}
		}
		moduleInfo=getBeanAccept(moduleInfo, "title","remark","content");
		moduleInfo.setContent(((XssHttpServletRequestWrapper) req).getOrgRequest().getParameter("content"));
		if(moduleService.saveModuleInfo(moduleInfo)<1){
			return new MsgEntity(-1,"保存失败");
		}
		return new MsgEntity(0,"保存成功");
	}
	
}
