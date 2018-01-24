package com.bookadmin.model;

public class Book {
	private int bookid;
	private String bookname;
	private int bookcount;
	private String bookManPhone;
	private int bookState;		//书籍状态  0：未入库    1：在库   2：借出
	private String bookPlace;
	private double bookMoney;
	private int storeid;	//网点id
	private String bookRoute;
	private String tags0;	//书籍介绍
	private String bookimgurl;		//书籍图片地址
	private String bookclass;		//书籍分类
	private int amount; //书籍数量
	private String average; //評分
	
	public Book(){}

	public int getBookid() {
		return bookid;
	}

	public void setBookid(int bookid) {
		this.bookid = bookid;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public int getBookcount() {
		return bookcount;
	}

	public void setBookcount(int bookcount) {
		this.bookcount = bookcount;
	}

	public String getBookManPhone() {
		return bookManPhone;
	}

	public void setBookManPhone(String bookManPhone) {
		this.bookManPhone = bookManPhone;
	}

	public int getBookState() {
		return bookState;
	}

	public void setBookState(int bookState) {
		this.bookState = bookState;
	}

	public String getBookPlace() {
		return bookPlace;
	}

	public void setBookPlace(String bookPlace) {
		this.bookPlace = bookPlace;
	}

	public double getBookMoney() {
		return bookMoney;
	}

	public void setBookMoney(double bookMoney) {
		this.bookMoney = bookMoney;
	}

	public int getStoreid() {
		return storeid;
	}

	public void setStoreid(int storeid) {
		this.storeid = storeid;
	}

	public String getBookRoute() {
		return bookRoute;
	}

	public void setBookRoute(String bookRoute) {
		this.bookRoute = bookRoute;
	}



	public String getTags0() {
		return tags0;
	}

	public void setTags0(String tags0) {
		this.tags0 = tags0;
	}

	public String getBookimgurl() {
		return bookimgurl;
	}

	public void setBookimgurl(String bookimgurl) {
		this.bookimgurl = bookimgurl;
	}

	public String getBookclass() {
		return bookclass;
	}

	public void setBookclass(String bookclass) {
		this.bookclass = bookclass;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getAverage() {
		return average;
	}

	public void setAverage(String average) {
		this.average = average;
	}
	
	
}
