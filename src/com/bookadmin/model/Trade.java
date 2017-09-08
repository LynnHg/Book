package com.bookadmin.model;

public class Trade {
	private String tradeid;
	private String tradeTime;
	private int tradeWay;
	private float tradeMoney;
	private String openid;
	private int orderid;
	private int tradeFlag;
	public String getTradeid() {
		return tradeid;
	}
	public void setTradeid(String tradeid) {
		this.tradeid = tradeid;
	}
	public String getTradeTime() {
		return tradeTime;
	}
	public void setTradeTime(String tradeTime) {
		this.tradeTime = tradeTime;
	}
	public int getTradeWay() {
		return tradeWay;
	}
	public void setTradeWay(int tradeWay) {
		this.tradeWay = tradeWay;
	}
	public float getTradeMoney() {
		return tradeMoney;
	}
	public void setTradeMoney(float tradeMoney) {
		this.tradeMoney = tradeMoney;
	}
	public String getOpenid() {
		return openid;
	}
	public void setOpenid(String openid) {
		this.openid = openid;
	}
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public int getTradeFlag() {
		return tradeFlag;
	}
	public void setTradeFlag(int tradeFlag) {
		this.tradeFlag = tradeFlag;
	}
	public Trade(){}

}
