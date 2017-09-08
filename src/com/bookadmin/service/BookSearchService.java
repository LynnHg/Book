package com.bookadmin.service;

import java.util.ArrayList; 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookadmin.dao.BookSearchDao;
import com.bookadmin.model.Sbook;

@Service
public class BookSearchService {

	@Autowired
	private BookSearchDao bsd;
	
	public List<Sbook> SearchBookByKeyword(String keyword){
		List<Sbook> ls = new ArrayList<Sbook>();
		ls = bsd.SearchBookByKeyword(keyword);
		return ls;
	}
	public Sbook SearchBookByBooknumber(String booknumber){
		Sbook sb = new Sbook();
		sb = bsd.SearchBookByBooknumber(booknumber);
		return sb;
	}
	public List<Sbook> SearchBookByStoreid(int storeid) {
		List<Sbook> list = bsd.SearchBookByStoreid(storeid);
		return list;
	}
	
}
