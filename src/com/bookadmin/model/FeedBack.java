package com.bookadmin.model;

public class FeedBack {
	private int feedbackid;
	  private String feedbackTime;
	  private String feedbackText;
	  private int feedbackState;
	  private String feedbackResult;
	  private String openid;
	  
	public int getFeedbackid() {
		return feedbackid;
	}
	public void setFeedbackid(int feedbackid) {
		this.feedbackid = feedbackid;
	}
	public String getFeedbackTime() {
		return feedbackTime;
	}
	public void setFeedbackTime(String feedbackTime) {
		this.feedbackTime = feedbackTime;
	}
	public String getFeedbackText() {
		return feedbackText;
	}
	public void setFeedbackText(String feedbackText) {
		this.feedbackText = feedbackText;
	}
	public int getFeedbackState() {
		return feedbackState;
	}
	public void setFeedbackState(int feedbackState) {
		this.feedbackState = feedbackState;
	}
	public String getFeedbackResult() {
		return feedbackResult;
	}
	public void setFeedbackResult(String feedbackResult) {
		this.feedbackResult = feedbackResult;
	}
	public String getOpenid() {
		return openid;
	}
	public void setOpenid(String openid) {
		this.openid = openid;
	}
	  
	  
	  
}
