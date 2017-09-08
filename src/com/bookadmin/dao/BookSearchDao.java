package com.bookadmin.dao;

import java.util.List; 

import org.springframework.stereotype.Repository;

import com.bookadmin.model.Sbook;


@Repository
public interface BookSearchDao {

	public List<Sbook> SearchBookByKeyword(String keyword);
	public Sbook SearchBookByBooknumber(String booknumber);
	public List<Sbook> SearchBookByStoreid(int storeid);
}
