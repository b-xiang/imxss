/**
 * 
 */
package org.etrick.server.web.service;

import java.util.List;

import javax.annotation.Resource;

import org.etrick.server.comm.annotation.CacheWipe;
import org.etrick.server.comm.annotation.CacheWrite;
import org.etrick.server.comm.constant.CacheFinal;
import org.etrick.server.comm.entity.Pager;
import org.etrick.server.comm.entity.Where;
import org.etrick.server.comm.util.StringUtil;
import org.etrick.server.handle.jdbc.JdbcHandle;
import org.etrick.server.handle.thread.SysThreadHandle;
import org.etrick.server.web.domain.LetterInfo;
import org.etrick.server.web.domain.ProjectInfo;
import org.etrick.server.web.domain.ProjectModuleMapping;
import org.etrick.server.web.domain.UserInfo;
import org.springframework.stereotype.Service;

/**
 * @author etrick
 * @date 2017年7月11日
 * @blog http://54sb.org
 * @email 644556636@qq.com
 */
@Service
public class ProjectService {

	@Resource
	LetterService letterService;
	@Resource
	JdbcHandle jdbcHandle;

	@CacheWrite(key = CacheFinal.PROJECT_LIST, fields = { "userId", "keyWorld", "pager.currPage",
			"pager.pageSize" }, validTime = 2)
	public Pager loadUserModules(Integer userId, Pager pager, String keyWorld) {
		Where where = new Where();
		if(userId!=null){
			where.set("userId", userId);
		}
		if (!StringUtil.isNullOrEmpty(keyWorld)) {
			where.set("title", "like", "%" + keyWorld + "%");
		}
		return jdbcHandle.findPager(ProjectInfo.class, where, pager, "id", true);
	}

	@CacheWrite(key = CacheFinal.PROJECT_INFO, fields = "id", validTime = 72000)
	public ProjectInfo loadProjectInfo(Integer id) {
		return jdbcHandle.findBeanFirst(ProjectInfo.class, "id", id);
	}
	@CacheWipe(key=CacheFinal.PROJECT_LIST,fields="project.userId")
	@CacheWipe(key = CacheFinal.PROJECT_INFO, fields = "project.id")
	@CacheWipe(key = CacheFinal.PROJECT_NUM, fields = "project.userId")
	public Long saveProjectInfo(ProjectInfo project) {
		return jdbcHandle.saveOrUpdateAuto(project);
	}
	@CacheWipe(key=CacheFinal.PROJECT_LIST,fields="project.userId")
	@CacheWipe(key = CacheFinal.PROJECT_INFO, fields = "project.id")
	@CacheWipe(key = CacheFinal.PROJECT_NUM, fields = "project.userId")
	public Long delProjectInfo(ProjectInfo project) {
		String sql = "delete from project_info where id=? limit 1";
		Long code=jdbcHandle.doUpdate(sql, project.getId());
		if(code<1){
			return code;
		}
		SysThreadHandle.sysThreadPool.execute(new Runnable() {
			@Override
			public void run() {
				List<LetterInfo> letters=letterService.loadLettersByProjectNoCache(project);
				while(!StringUtil.isNullOrEmpty(letters)){
					for(LetterInfo letter:letters){
						letterService.delLetterInfo(letter);
					}
					letters=letterService.loadLettersByProjectNoCache(project);
				}
			}
		});
		return code;
	}
	
	public List<ProjectInfo> loadProjectsByUserNoCache(UserInfo userInfo){
		Where where=new Where();
		where.set("userId", userInfo.getId());
		Pager pager=new Pager();
		pager.setPageSize(100);
		return jdbcHandle.findBean(ProjectInfo.class,where,pager);
	}
	@CacheWrite(key = CacheFinal.PROJECT_LIST, fields = { "userInfo.userId"}, validTime = 72000)
	public List<ProjectInfo> loadProjects(UserInfo userInfo){
		Where where=new Where();
		where.set("userId", userInfo.getId());
		return jdbcHandle.findBean(ProjectInfo.class,where);
	}
	@CacheWrite(key = CacheFinal.PROJECT_MODULE_MAPPING_LIST, fields = "projectId", validTime = 72000)
	public List<ProjectModuleMapping> loadProjectMappings(Integer projectId) {
		return jdbcHandle.findBean(ProjectModuleMapping.class, "projectId", projectId);
	}

	@CacheWrite(key = CacheFinal.PROJECT_MODULE_MAPPING_LIST, fields = { "userId", "keyWorld", "pager.currPage",
			"pager.pageSize" }, validTime = 2)
	public Pager loadProjectMappings(Integer userId, Integer projectId, Pager pager, String keyWorld) {
		Where where = new Where();
		where.set("userId", userId);
		where.set("projectId", projectId);
		if (!StringUtil.isNullOrEmpty(keyWorld)) {
			where.set("mappingUrl", "like", "%" + keyWorld + "%");
		}
		return jdbcHandle.findPager(ProjectModuleMapping.class, where, pager, "mappingUrl", false);
	}

	@CacheWrite(key = CacheFinal.PROJECT_MODULE_MAPPING_INFO, fields = { "id" }, validTime = 72000)
	public ProjectModuleMapping loadProjectMappings(String id) {
		return jdbcHandle.findBeanFirst(ProjectModuleMapping.class, "id", id);
	}
	@CacheWipe(key=CacheFinal.PROJECT_LIST,fields="mapping.userId")
	@CacheWipe(key = CacheFinal.PROJECT_MODULE_MAPPING_LIST, fields = "mapping.projectId")
	@CacheWipe(key = CacheFinal.PROJECT_MODULE_MAPPING_INFO, fields = { "mapping.id" })
	public Long saveProjectModuleMapping(ProjectModuleMapping mapping) {
		return jdbcHandle.saveOrUpdateAuto(mapping);
	}

	@CacheWrite(key = CacheFinal.PROJECT_NUM, fields = "userId", validTime = 60)
	public Integer loadProjectNum(Integer userId) {
		String sql = "select count(*) from project_info where userId=?";
		return jdbcHandle.getCount(sql, userId);
	}
	@CacheWipe(key=CacheFinal.PROJECT_LIST,fields="mapping.userId")
	@CacheWipe(key = CacheFinal.PROJECT_MODULE_MAPPING_LIST, fields = "mapping.projectId")
	@CacheWipe(key = CacheFinal.PROJECT_MODULE_MAPPING_INFO, fields = { "mapping.id" })
	public Long delProjectModuleMapping(ProjectModuleMapping mapping) {
		String sql = "delete from project_module_mapping where id=? limit 1";
		return jdbcHandle.doUpdate(sql, mapping.getId());
	}
}
