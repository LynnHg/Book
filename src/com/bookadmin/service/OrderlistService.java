package com.bookadmin.service;

import java.util.ArrayList; 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookadmin.dao.OrderlistDao;
import com.bookadmin.model.Lbook;
import com.bookadmin.model.Lorder;
import com.bookadmin.model.User;

@Service
public class OrderlistService {

	@Autowired
	private OrderlistDao old;
	
	public List<Lorder> getOrderlist(String openid){
		List<Lorder> ls =new ArrayList<Lorder>();
		ls=old.getOrderlist(openid);
		return  ls;
	}
	
}
