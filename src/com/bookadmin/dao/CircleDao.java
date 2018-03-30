package com.bookadmin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bookadmin.model.Circle;

@Repository
public interface CircleDao {
    public void add(String circleTime,String circleText,String circleState,String openid,String nickName,String advatarUrl);
    
    public void delete(String circleid);
    
    public void change(String circleid,String circleText,String circleState);
    
    public List<Circle> getCircle(String openid,String circlemin,String circlemax);
    
    public List<Circle> getAllcircle();
}
