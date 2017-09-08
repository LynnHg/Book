package com.bookadmin.service;

import java.util.Map; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookadmin.dao.BookStateDao;

@Service
public class BookStateService {
	@Autowired
	private BookStateDao bookStateDao;
	public int getBookState(Map<String,String> map){
		return bookStateDao.getBookState(map.get("scene"));
	}
}
