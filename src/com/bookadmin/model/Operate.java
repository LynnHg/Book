package com.bookadmin.model;

public class Operate {
	private String openid;
	private String operatePhone;
	private String operateName;
	private int operateStoreid;
	public Operate(){}
	
	public String getOpenid() {
		return openid;
	}
	public void setOpenid(String openid) {
		this.openid = openid;
	}
	public String getOperatePhone() {
		return operatePhone;
	}
	public void setOperatePhone(String operatePhone) {
		this.operatePhone = operatePhone;
	}
	public String getOperateName() {
		return operateName;
	}
	public void setOperateName(String operateName) {
		this.operateName = operateName;
	}
	public int getOperateStoreid() {
		return operateStoreid;
	}
	public void setOperateStoreid(int operateStoreid) {
		this.operateStoreid = operateStoreid;
	}

}