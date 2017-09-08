package com.bookadmin.model;

public class Sbook {

	private int bookid;
	private String bookname;
	private String bookimgurl;
	private String storename;
	private String booknumber;
	private int amount;
	
	
	public Sbook(){}
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
	public String getBookimgurl() {
		return bookimgurl;
	}
	public void setBookimgurl(String bookimgurl) {
		this.bookimgurl = bookimgurl;
	}
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	public String getBooknumber() {
		return booknumber;
	}
	public void setBooknumber(String booknumber) {
		this.booknumber = booknumber;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	
}
