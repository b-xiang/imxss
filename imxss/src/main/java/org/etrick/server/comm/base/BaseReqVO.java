package org.etrick.server.comm.base;

import com.alibaba.fastjson.annotation.JSONField;
import org.etrick.server.comm.entity.Header;

@SuppressWarnings("serial")
public  class BaseReqVO extends Header {
	
	@JSONField(serialize=false)
	public Header getHeader(){
		return (Header)this;
	}
}
