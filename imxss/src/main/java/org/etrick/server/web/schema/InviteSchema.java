package org.etrick.server.web.schema;

import org.etrick.server.web.domain.InviteInfo;

@SuppressWarnings("serial")
public class InviteSchema extends InviteInfo{

	private String regUserEmail;

	public String getRegUserEmail() {
		return regUserEmail;
	}

	public void setRegUserEmail(String regUserEmail) {
		this.regUserEmail = regUserEmail;
	}
	
	
}
