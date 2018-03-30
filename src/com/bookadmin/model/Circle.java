package com.bookadmin.model;

public class Circle {
	private int circleid;
	private String circleTime;
	private String circleText;
	private String circleState;
	private String openid;
	private String nickName;
	private String avatarUrl;
	private User user;
	public int getCircleid() {
		return circleid;
	}
	public void setCircleid(int circleid) {
		this.circleid = circleid;
	}
	public String getCircleTime() {
		return circleTime;
	}
	public void setCircleTime(String circleTime) {
		this.circleTime = circleTime;
	}
	public String getCircleText() {
		return circleText;
	}
	public void setCircleText(String circleText) {
		this.circleText = circleText;
	}
	public String getCircleState() {
		return circleState;
	}
	public void setCircleState(String circleState) {
		this.circleState = circleState;
	}
	public String getOpenid() {
		return openid;
	}
	public void setOpenid(String openid) {
		this.openid = openid;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
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
