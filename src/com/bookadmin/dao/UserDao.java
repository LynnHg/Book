package com.bookadmin.dao;

import java.util.List; 

import org.springframework.stereotype.Repository;

import com.bookadmin.model.User;

@Repository
public interface UserDao {	
    public List<User> getAllUser();
    public void changeUserState1(String openid);
    public void add(User user);
    public void delete(String openid);
    public User searchByopenid(String openid);
	public void change(User user);
	public void changeMoney(User user);
	public void saveInfo(User user);
	public List<User> getUserByOpenid(String openid);
	public List<User> getUserByName(String name);
	public List<User> getUserByPhone(String phone);
}
