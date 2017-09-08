package com.bookadmin.service;

import java.util.List;  
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookadmin.model.User;

import net.sf.json.JSONObject;

import com.bookadmin.dao.AddbookDao;
import com.bookadmin.model.Addbook;


@Service
public class AddbookService {
	@Autowired
	private AddbookDao ad;
	
	
	
	public List<Addbook> getUserid(){
		return ad.getUserid();
	}
	
	public void addBook(String json){
	    JSONObject addjson =JSONObject.fromObject(json);
	    String bookname =(String) addjson.get("bookname");
	    String imgurl =(String) addjson.get("imgurl");
	    String bookclass =(String) addjson.get("bookclass");
		Addbook add = new Addbook();
		add.setBookname(bookname);
		add.setBookimgurl(imgurl);
		add.setBookclass(bookclass);
		ad.addBook(add);
	}

	public void add(String bookname, int bookcount,
			String bookManPhone, int bookState, String bookPlace,
			double bookMoney, int storeid, String bookRoute, String tags0,
			String bookimgurl, String bookclass) {
		ad.add(bookname, bookcount, bookManPhone, bookState, bookPlace,bookMoney,storeid,bookRoute,tags0,bookimgurl,bookclass);

	}
	
	
}
