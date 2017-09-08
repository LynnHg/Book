package com.bookadmin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bookadmin.dao.FeedBackDao;
import com.bookadmin.model.FeedBack;



@Service
public class FeedBackService {
	@Autowired
	private FeedBackDao ud;
	
	public int getFeedBackcount(){
		return ud.getFeedBackcount();
	}
	
	public List<FeedBack> getAllFeedBack(){
		return ud.getAllFeedBack();
	}
	
	
	
}
