package com.bookadmin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bookadmin.model.Lovingbook;

@Repository
public interface LovingbookDao {
	
	public void addLovingbook(int bookid, String openid);
	
	public void removeLovingbook(int bookid, String openid);
	
	public List<Lovingbook> getLovingbook(int bookid, String openid);
	
	public List<Lovingbook> getAllLovingbook(String openid);
}
