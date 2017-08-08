package org.etrick.server.comm.enm;

public enum MsgEnum {
	
	AUDIO_ORDER(1, "来订单啦"),// 成功标志
	
	
	;

	private int code;
	private String msg;

	public int getCode() {
		return code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg=msg;
	}
	MsgEnum(int code,  String msg) {
		this.code = code;
		this.msg = msg;
	}
}
