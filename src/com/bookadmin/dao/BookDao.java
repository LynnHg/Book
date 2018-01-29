package com.bookadmin.dao;

import org.springframework.stereotype.Repository; 

import com.bookadmin.model.Book;
@Repository
public interface BookDao {
	public int getBookidByScene(String scene);
	public Book getBookByid(int bookid);
	public void changeBookStateGO(int bookid);
	public void changeBookStateBack(int bookid);
	public void changeBookStore(Book book);
	public void changeBookCount(Book book);
}
