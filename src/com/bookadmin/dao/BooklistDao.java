package com.bookadmin.dao;

import java.util.List; 

import org.springframework.stereotype.Repository;

import com.bookadmin.model.Book;
import com.bookadmin.model.Lbook;

@Repository
public interface BooklistDao {
	public List<Lbook> getBooklist(String city);

	public List<Book> getAllbook();

	public List<Book> SearchBook();
	
	public List<Book> getBookbyname(String bookname);

	public void delete(String bookid);

	public void change(int bookid, String bookname, int amount,int bookcount,
			String bookManPhone, int bookState, String bookPlace,
			double bookMoney, int storeid, String bookRoute, String tags0,String bookimgurl,
			String bookclass,String average);

	public List<Book> getBookbyid(int bookid);
	public List<Book> SearchBookByStoreid(int storeid);
	
	public void changeBookAmount(int storeid, String addBooks);
}
