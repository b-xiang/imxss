package org.etrick.server.web.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import org.etrick.server.comm.annotation.CacheWrite;
import org.etrick.server.comm.constant.CacheFinal;
import org.etrick.server.handle.jdbc.JdbcHandle;
import org.etrick.server.web.domain.UserRole;

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
