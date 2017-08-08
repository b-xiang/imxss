package org.etrick.server.web.domain;

import java.util.Date;

import org.etrick.server.comm.base.BaseModel;


@SuppressWarnings("serial")
public class InviteInfo extends BaseModel{

	private String inviteCode;
	private Integer userId;
	private Integer status;
	private Date updateTime;
	public String getInviteCode() {
		return inviteCode;
	}
	public void setInviteCode(String inviteCode) {
		this.inviteCode = inviteCode;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
	
	


}
