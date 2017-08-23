package com.imxss.web.service;

import java.util.List;

import javax.annotation.Resource;

import org.etrick.framework.context.annotation.CacheWrite;
import org.etrick.framework.core.jdbc.JdbcHandle;
import org.springframework.stereotype.Service;

import com.imxss.web.constant.CacheFinal;
import com.imxss.web.domain.UserRole;

@Service
public class RoleService {

	@Resource
	JdbcHandle jdbcHandle;
	
	@CacheWrite(key=CacheFinal.USER_ROLE_INFO,validTime=600)
	public UserRole loadRole(Integer roleId){
		return jdbcHandle.findBeanFirst(UserRole.class,"id",roleId);
	}
	
	@CacheWrite(key=CacheFinal.USER_ROLE_LIST,validTime=600)
	public List<UserRole> loadRoles(){
		return jdbcHandle.findBean(UserRole.class);
	}
}
