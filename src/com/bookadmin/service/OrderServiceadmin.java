package com.bookadmin.service;



import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookadmin.dao.OrderDaoadmin;
import com.bookadmin.model.Orderadmin;



@Service
public class OrderServiceadmin {
	@Autowired
	private OrderDaoadmin od;
	public List<Orderadmin> getOrderByOpenid(String openid){
		return od.getOrderByOpenid(openid);
	}
	public List<Orderadmin> getOrderByOrderid(int orderid){
		return od.getOrderByOrderid(orderid);
	}
	public void deleteOrder(int orderid){
		od.deleteOrder(orderid);
	}
    public void updateOrder(Orderadmin orderadmin){
    	od.updateOrder(orderadmin);
	}
    public List<Orderadmin> getOrderByState(int orderState){
    	return od.getOrderByState(orderState);
    }
    public List<Orderadmin> getAllorder(){
		return od.getAllorder();
	}
	
}
