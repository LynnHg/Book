package com.bookadmin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;


import com.bookadmin.model.Guide;


@Repository
public interface GuideDao {	
    public int getGuidecount();
    public List<Guide> getAllguide();
    public void changeGuideState1(int guideid);
    public List<Guide> getGuide(String guideid);
    public List<Guide> bathSelect(String guideState);
    public void add(String guideTime,String guideText,int guideState);
    public List<Guide> getGuideText(String guideText);
    public Guide searchByguideid(int guideid);
    public void change(int guideid,String guideTime,String guideText,int guideState);
	public void delete(int guideid);
	public void bathDelete(String guideidArray);
	
	
	
}
