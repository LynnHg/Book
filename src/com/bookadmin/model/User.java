package com.bookadmin.model;

public class User {
  private String openid;
  private String phone;
  private String name;
  private int userState;
  private int point;
  private int deposit;
  private double money;
  private String nickName;
  private String avatarUrl;
  
  public User(){}
public String getOpenid() {
	return openid;
}
public void setOpenid(String openid) {
	this.openid = openid;
}

public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getUserState() {
	return userState;
}
public void setUserState(int userState) {
	this.userState = userState;
}
public int getPoint() {
	return point;
}
public void setPoint(int point) {
	this.point = point;
}
public int getDeposit() {
	return deposit;
}
public void setDeposit(int deposit) {
	this.deposit = deposit;
}
public double getMoney() {
	return money;
}
public void setMoney(double money) {
	this.money = money;
}
public String getNickName() {
	return nickName;
}
public void setNickName(String nickName) {
	this.nickName = nickName;
}
public String getAvatarUrl() {
	return avatarUrl;
}
public void setAvatarUrl(String avatarUrl) {
	this.avatarUrl = avatarUrl;
}
}
