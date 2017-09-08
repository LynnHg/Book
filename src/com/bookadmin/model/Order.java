package com.bookadmin.model;

public class Order {
	private int orderid;
	private int orderState;
	private String startTime;
	private String bookName;
	private String bookStartPlace;
	private String bookEndPlace;
	private String endTime;
	private String openid;
	private int bookid;
	private int money;
	public Order(){}
	
	public int getBookid() {
		return bookid;
	}

	public void setBookid(int bookid) {
		this.bookid = bookid;
	}

	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public int getOrderState() {
		return orderState;
	}
	public void setOrderState(int orderState) {
		this.orderState = orderState;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookStartPlace() {
		return bookStartPlace;
	}
	public void setBookStartPlace(String bookStartPlace) {
		this.bookStartPlace = bookStartPlace;
	}
	public String getBookEndPlace() {
		return bookEndPlace;
	}
	public void setBookEndPlace(String bookEndPlace) {
		this.bookEndPlace = bookEndPlace;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getOpenid() {
		return openid;
	}
	public void setOpenid(String openid) {
		this.openid = openid;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
}
