package com.bookadmin.dao;

import java.util.List; 
import org.springframework.stereotype.Repository;
import com.bookadmin.model.Addbook;
import com.bookadmin.model.Book;
@Repository
public interface AddbookDao {	
  
	public List<Addbook> getUserid();
    public void addBook(Addbook addbook );
	public void add(String bookname, int bookcount,
			String bookManPhone, int bookState, String bookPlace,
			double bookMoney, int storeid, String bookRoute, String tags0,
			String bookimgurl,String bookclass);
	public void shareAdd(String bookname,String author,String bookManPhone,int bookState,double bookMoney,
			int bookcount,String bookIntroduce,int amount,int storeid,String bookimgurl,String average,String publisher,String pubdate,
			String tags0,String tags1,String tags2,String bookProvider,String openid,String sharedTime);
	public void manualAdd(String bookname, String author, String bookimgurl,String bookManPhone,String bookProvider,String openid,String sharedTime);
}
