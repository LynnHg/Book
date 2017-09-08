package com.bookadmin.service;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookadmin.dao.AdminDao;
import com.bookadmin.model.Admin;

@Service
public class AdminService {
	@Autowired
	private AdminDao ad;
	
	public List<Admin> search(String username){
		
		 return ad.search(username);
	}
	public void add(Admin admin){
		
		  ad.add(admin);
	}
	public void change(Admin admin){
		
		  ad.change(admin);
	}
	public void delete(String admin){
		
		 ad.delete(admin);
	}
	public int search1(String username,String password ){
		//System.out.println(username);
		return ad.search1(username,password);
	}
	
	public List<Admin> searchAll(){
		return ad.searchAll();
	}
	
}

