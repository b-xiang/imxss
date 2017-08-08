package org.etrick.server.web.schema;

import org.etrick.server.web.domain.ProjectModuleMapping;

@SuppressWarnings("serial")
public class ProjectModuleMappingSchema extends ProjectModuleMapping{

	private String projectName;
	
	private String moduleName;

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getModuleName() {
		return moduleName;
	}

	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}
	
	
}
