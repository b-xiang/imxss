package org.etrick.server.web.schema;

import org.etrick.server.web.domain.ProjectInfo;

@SuppressWarnings("serial")
public class ProjectSchema extends ProjectInfo {

	private String moduleName;

	private Integer letterNum;
	
	private String unionUrl;
	
	private String userEmail;
	
	

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUnionUrl() {
		return unionUrl;
	}

	public void setUnionUrl(String unionUrl) {
		this.unionUrl = unionUrl;
		unionUrl=unionUrl.replace("&#", "& #");
	}

	public String getModuleName() {
		return moduleName;
	}

	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}

	public Integer getLetterNum() {
		return letterNum;
	}

	public void setLetterNum(Integer letterNum) {
		this.letterNum = letterNum;
	}


}
