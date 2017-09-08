package com.bookadmin.model;

public class Dorder {

	private String bookname;
	private String bookimgurl;
	private String startTime;
	private String endTime;
	private int orderState;
	private int orderMoney;
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getBookimgurl() {
		return bookimgurl;
	}
	public void setBookimgurl(String bookimgurl) {
		this.bookimgurl = bookimgurl;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public int getOrderState() {
		return orderState;
	}
	public void setOrderState(int orderState) {
		this.orderState = orderState;
	}
	public int getOrderMoney() {
		return orderMoney;
	}
	public void setOrderMoney(int orderMoney) {
		this.orderMoney = orderMoney;
	}
	
	
}
