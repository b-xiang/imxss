/**
 * 
 */
package com.imxss.web.domain;

import java.util.Date;

import org.etrick.framework.context.base.BaseModel;

/**
 * @author etrick
 * @date 2017年7月11日
 * @blog http://54sb.org
 * @email 644556636@qq.com
 */
@SuppressWarnings("serial")
public class ProjectInfo extends BaseModel{

	private Integer id;
	private Integer moduleId;
	private Integer userId;
	private String title;
	private Date updateTime;
	private String uri;
	private String sortUri;
	private Integer openMobile;
	private Integer openEmail;
	private String ignoreRef;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getModuleId() {
		return moduleId;
	}
	public void setModuleId(Integer moduleId) {
		this.moduleId = moduleId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public String getUri() {
		return uri;
	}
	public void setUri(String uri) {
		this.uri = uri;
	}
	public String getSortUri() {
		return sortUri;
	}
	public void setSortUri(String sortUri) {
		this.sortUri = sortUri;
	}
	public Integer getOpenMobile() {
		return openMobile;
	}
	public void setOpenMobile(Integer openMobile) {
		this.openMobile = openMobile;
	}
	public Integer getOpenEmail() {
		return openEmail;
	}
	public void setOpenEmail(Integer openEmail) {
		this.openEmail = openEmail;
	}
	public String getIgnoreRef() {
		return ignoreRef;
	}
	public void setIgnoreRef(String ignoreRef) {
		this.ignoreRef = ignoreRef;
	}

	
}
