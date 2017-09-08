package com.bookadmin.service;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookadmin.dao.UserDao;
import com.bookadmin.model.User;



@Service
public class UserService {
	@Autowired
	private UserDao ud;
	//通过openid查找
	public List<User> getUserByOpenid(String openid){
		return ud.getUserByOpenid(openid);
}
	//通过电话查找
	public List<User> getUserByPhone(String phone){
		return ud.getUserByPhone(phone);
	}
	//显示所有
	public List<User> getAllUser(){
		return ud.getAllUser();
	}
}
