package com.bookadmin.model;

public class Sbook {

	private int bookid;
	private String bookname;
	private String bookimgurl;
	private String storename;
	private String booknumber;
	private int amount;
	private String average;
	private String author;
	private String tags0;
	private String tags1;
	private String tags2;
	private int bookState;		//书籍状态  0：未入库    1：在库   2：借出
	private String sharedTime;
	
	public String getAverage() {
		return average;
	}
	public void setAverage(String average) {
		this.average = average;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getTags0() {
		return tags0;
	}
	public void setTags0(String tags0) {
		this.tags0 = tags0;
	}
	public String getTags1() {
		return tags1;
	}
	public void setTags1(String tags1) {
		this.tags1 = tags1;
	}
	public String getTags2() {
		return tags2;
	}
	public void setTags2(String tags2) {
		this.tags2 = tags2;
	}
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
	public int getBookState() {
		return bookState;
	}
	public void setBookState(int bookState) {
		this.bookState = bookState;
	}
	public String getSharedTime() {
		return sharedTime;
	}
	public void setSharedTime(String sharedTime) {
		this.sharedTime = sharedTime;
	}
	
	
}
