package org.etrick.server.web.controller.admin;

import javax.annotation.Resource;

import org.etrick.server.comm.annotation.Power;
import org.etrick.server.comm.entity.MsgEntity;
import org.etrick.server.comm.entity.Pager;
import org.etrick.server.comm.util.StringUtil;
import org.etrick.server.handle.controller.BaseController;
import org.etrick.server.web.domain.SuffixInfo;
import org.etrick.server.web.service.SuffixService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/admin/suffix")
@Controller
public class ASuffixController extends BaseController{

	@Resource
	SuffixService suffixService;
	
	@RequestMapping("/suffixManage")
	@Power("suffixManage")
	public String suffixManage(){
		Pager pager=getBeanAll(Pager.class);
		pager=suffixService.loadSuffixs(pager, getPara("keyWorld"));
		setAttribute("dataPager", pager);
		keepParas();
		return "admin/suffix/suffix_list";
	}
	
	@RequestMapping("/openSuffix")
	@Power("suffixManage")
	@ResponseBody
	public Object openSuffix(String suffix,Integer status){
		Long code=suffixService.updateStatus(suffix, status);
		if(code<1){
			return new MsgEntity(-1,"操作失败");
		}
		return new MsgEntity(0,"操作成功");
	}
	
	@RequestMapping("/delSuffix")
	@Power("suffixManage")
	@ResponseBody
	public Object delSuffix(String suffix){
		SuffixInfo suffixInfo=suffixService.loadSuffix(suffix);
		if(suffixInfo==null){
			return new MsgEntity(-1,"后缀不存在");
		}
		if(suffixInfo.getStatus()==2){
			return new MsgEntity(-1,"默认后缀不可删除");
		}
		Long code=suffixService.delSuffix(suffix);
		if(code<1){
			return new MsgEntity(-1,"操作失败");
		}
		return new MsgEntity(0,"操作成功");
	}
	
	@RequestMapping("/addSuffix")
	@Power("suffixManage")
	public String addSuffix(){
		return "admin/suffix/suffix_edit";
	}
	
	@RequestMapping("/saveSuffix")
	@Power("suffixManage")
	@ResponseBody
	public Object saveSuffix(){
		SuffixInfo suffixInfo=getBeanAll(SuffixInfo.class);
		if(suffixInfo==null||StringUtil.isNullOrEmpty(suffixInfo.getSuffix())){
			return new MsgEntity(-1,"参数有误");
		}
		SuffixInfo suffixInfoInDb=suffixService.loadSuffix(suffixInfo.getSuffix());
		if(suffixInfoInDb!=null){
			return new MsgEntity(-1,"后缀已存在");
		}
		Long code=suffixService.addSuffix(suffixInfo);
		if(code<1){
			return new MsgEntity(-1,"操作失败");
		}
		return new MsgEntity(0,"操作成功");
	}
}
