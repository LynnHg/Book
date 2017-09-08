package com.bookadmin.dao;

import java.util.List; 

import com.bookadmin.model.Admin;


public interface AdminDao {
	public List<Admin> search(String username);//按账号查询管理者
    public void add(Admin admin);//按账号，密码添加管理者
    public int search1(String username,String password );//按账号，密码登录
    public void delete(String admin);//按账号删除管理者
	public void change(Admin admin);//按账号，密码更新管理者
	public List<Admin> searchAll();//按账号，密码查询所有管理者	
}