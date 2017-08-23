package org.etrick.framework.context.base;

import org.etrick.framework.context.entity.Header;

import com.alibaba.fastjson.annotation.JSONField;

@SuppressWarnings("serial")
public  class BaseReqVO extends Header {
	
	@JSONField(serialize=false)
	public Header getHeader(){
		return (Header)this;
	}
}
