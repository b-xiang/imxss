package org.etrick.server.web.schema;

import org.etrick.server.web.domain.ModuleInfo;

@SuppressWarnings("serial")
public class ModuleSchema extends ModuleInfo{

	private String userEmail;

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	
}
