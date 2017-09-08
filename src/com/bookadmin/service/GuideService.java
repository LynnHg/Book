package com.bookadmin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookadmin.dao.GuideDao;
import com.bookadmin.model.Guide;

@Service
public class GuideService {
	@Autowired
	private GuideDao gd;
	
	public int getGuidecount(){
		return gd.getGuidecount();
	}
	
	public List<Guide> getAllguide(){
		return gd.getAllguide();
	}
}