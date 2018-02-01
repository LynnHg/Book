package com.bookadmin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bookadmin.model.FeedBack;

@Repository
public interface FeedBackDao {	
    public int getFeedBackcount();
    public List<FeedBack> getAllFeedBack();
    
    public void changeFeedBackState1(String feedbackid);
    public List<FeedBack> getFeedBack(String openid);
    public List<FeedBack> getfeedbackText(String feedbackText);
    public List<FeedBack> getfeedbackTime(String firstfeedbackTime,String lastfeedbackTime);
    public List<FeedBack> getfeedbackTextTime(String feedbackText,String firstfeedbackTime,String lastfeedbackTime);
    public List<FeedBack> getfeedbackStateTime(String feedbackState,String firstfeedbackTime,String lastfeedbackTime);
    
    
    public List<FeedBack> getFeedBackState(String feedbackState);
    public void add(String feedbackTime,String feedbackText,int feedbackState,String feedbackResult,String openid);
    public void userAdd(String feedbackTime,String feedbackText,String openid);
    public void delete(String  feedbackid);
    public void deleteFeedBack(int  feedbackid);
    public FeedBack searchByfeedbackid(String  feedbackid);
    public void change(int feedbackid,String feedbackTime,String feedbackText,int feedbackState,String feedbackResult,String openid);
    
	public List<FeedBack> bathSelect(String feedbackState);
	
    
}