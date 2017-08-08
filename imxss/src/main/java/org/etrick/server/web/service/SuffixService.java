package org.etrick.server.web.service;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.etrick.server.comm.annotation.CacheWipe;
import org.etrick.server.comm.annotation.CacheWrite;
import org.etrick.server.comm.constant.CacheFinal;
import org.etrick.server.comm.entity.Pager;
import org.etrick.server.comm.entity.Where;
import org.etrick.server.comm.util.PropertUtil;
import org.etrick.server.comm.util.StringUtil;
import org.etrick.server.handle.jdbc.JdbcHandle;
import org.etrick.server.web.domain.SuffixInfo;
import org.etrick.server.web.domain.SuffixStatic;
import org.springframework.stereotype.Service;



@Service
public class SuffixService {

	@Resource
	JdbcHandle jdbcHandle;
	
	@CacheWrite(key=CacheFinal.SPRING_SUFFIXS,validTime=3600)
	public List<String> loadSpringSuffixs(){
		//执行语句：select * from suffix where status in (1,2)
		List<SuffixInfo> suffixs= jdbcHandle.findBean(SuffixInfo.class,"status",new Integer[]{1,2});
		if(StringUtil.isNullOrEmpty(suffixs)){
			return new ArrayList<String>();
		}
		return PropertUtil.getFieldValues(suffixs, "suffix");
	}
	
	public SuffixInfo loadSuffix(String suffix){
		return jdbcHandle.findBeanFirst(SuffixInfo.class,"suffix",suffix);
	}
	
	@CacheWipe(key=CacheFinal.SPRING_SUFFIXS)
	@CacheWipe(key=CacheFinal.DEFAULT_SUFFIXS)
	public Long delSuffix(String suffix){
		String sql="delete from suffix_info where suffix=? limit 1";
		return jdbcHandle.doUpdate(sql, suffix);
	}
	@CacheWipe(key=CacheFinal.SPRING_SUFFIXS)
	@CacheWipe(key=CacheFinal.DEFAULT_SUFFIXS)
	public Long addSuffix(SuffixInfo suffix){
		if(suffix.getStatus()==null){
			suffix.setStatus(1);
		}
		return jdbcHandle.saveOrUpdateAuto(suffix);
	}
	@CacheWipe(key=CacheFinal.SPRING_SUFFIXS)
	@CacheWipe(key=CacheFinal.DEFAULT_SUFFIXS)
	public Long updateStatus(String suffix,Integer status){
		if(status==2){
			String sql="update suffix_info set status=1 where status=2";
			Long code=jdbcHandle.doUpdate(sql);
			if(code<1){
				return code;
			}
		}
		String sql="update suffix_info set status=? where suffix=? limit 1";
		return jdbcHandle.doUpdate(sql,status,suffix);
	}
	
	
	@CacheWrite(key=CacheFinal.SUFFIX_LIST,fields={"keyWorld","pager.currPage","pager.pageSize"},validTime=2)
	public Pager loadSuffixs(Pager pager,String keyWorld){
		Where where=new Where();
		if(!StringUtil.isNullOrEmpty(keyWorld)){
			where.set("suffix", "like","%"+keyWorld+"%");
		}
		return jdbcHandle.findPager(SuffixInfo.class, where,pager,"status desc,suffix",false);
	}
	@CacheWrite(key=CacheFinal.DEFAULT_SUFFIXS,validTime=72000)
	public String loadSpringDefaultSuffix(){
		//执行语句：select * from suffix where status =2 limit 1
		SuffixInfo suffix=jdbcHandle.findBeanFirst(SuffixInfo.class,"status",2);
		if(StringUtil.isNullOrEmpty(suffix)){
			return "do";
		}
		return suffix.getSuffix();
	}
	
	@CacheWrite(key=CacheFinal.STA_SUFFIX ,validTime=3600)
	public List<String> loadStaSuffix() {
		//执行语句：select * from suffix_static
		List<SuffixStatic> suffixs= jdbcHandle.findBean(SuffixStatic.class);
		if(StringUtil.isNullOrEmpty(suffixs)){
			return new ArrayList<String>();
		}
		return PropertUtil.getFieldValues(suffixs, "suffix");
	}
}