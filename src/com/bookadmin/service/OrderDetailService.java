package com.bookadmin.service;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bookadmin.dao.OrderDetailDao;
import com.bookadmin.model.Dorder;

@Service
public class OrderDetailService {

	@Autowired
	private OrderDetailDao odd;
	
	public Dorder getOrderDetail(int orderid){
		Dorder d = new Dorder();
		d = odd.getOrderDetail(orderid);
		return d;
	}
}
