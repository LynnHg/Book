package com.bookadmin.dao;

import java.util.List; 
import org.springframework.stereotype.Repository;
import com.bookadmin.model.Addbook;
@Repository
public interface AddbookDao {	
  
	public List<Addbook> getUserid();
    public void addBook(Addbook addbook );
	public void add(String bookname, int bookcount,
			String bookManPhone, int bookState, String bookPlace,
			double bookMoney, int storeid, String bookRoute, String tags0,
			String bookimgurl,String bookclass);
}
