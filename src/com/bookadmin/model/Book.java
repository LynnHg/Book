package com.bookadmin.model;

public class Book {
	private int bookid;
	private String bookname;
	@Override
	public String toString() {
		return "Book [bookid=" + bookid + ", bookname=" + bookname + ", author=" + author + ", bookcount=" + bookcount
				+ ", bookManPhone=" + bookManPhone + ", bookState=" + bookState + ", bookPlace=" + bookPlace
				+ ", bookMoney=" + bookMoney + ", storeid=" + storeid + ", bookRoute=" + bookRoute + ", tags0=" + tags0
				+ ", tags1=" + tags1 + ", tags2=" + tags2 + ", bookimgurl=" + bookimgurl + ", bookclass=" + bookclass
				+ ", amount=" + amount + ", average=" + average + ", publisher=" + publisher + ", pubdate=" + pubdate
				+ ", bookIntroduce=" + bookIntroduce + ", openid=" + openid + ", bookProvider=" + bookProvider
				+ ", sharedTime=" + sharedTime + "]";
	}

	private String author;
	private int bookcount;
	private String bookManPhone;
	private int bookState;		//书籍状态  0：未入库    1：在库   2：借出
	private String bookPlace;
	private double bookMoney;
	private int storeid;	//网点id
	private String bookRoute;
	private String tags0;	//书籍介绍
	private String tags1;
	private String tags2;
	private String bookimgurl;		//书籍图片地址
	private String bookclass;		//书籍分类
	private int amount; //书籍数量
	private String average; //評分
	private String publisher;
	private String pubdate;
	private String bookIntroduce;
	private String openid;
	private String bookProvider;
	private String sharedTime;
	
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

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
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

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getPubdate() {
		return pubdate;
	}

	public void setPubdate(String pubdate) {
		this.pubdate = pubdate;
	}

	public String getBookIntroduce() {
		return bookIntroduce;
	}

	public void setBookIntroduce(String bookIntroduce) {
		this.bookIntroduce = bookIntroduce;
	}

	public String getOpenid() {
		return openid;
	}

	public void setOpenid(String openid) {
		this.openid = openid;
	}

	public String getBookProvider() {
		return bookProvider;
	}

	public void setBookProvider(String bookProvider) {
		this.bookProvider = bookProvider;
	}

	public String getSharedTime() {
		return sharedTime;
	}

	public void setSharedTime(String sharedTime) {
		this.sharedTime = sharedTime;
	}
	
	
}
