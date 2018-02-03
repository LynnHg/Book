package com.bookadmin.dao;

import org.springframework.stereotype.Repository;

@Repository
public interface LovingbookDao {
	
	public void addLovingbook(int bookid, String openid);
}
