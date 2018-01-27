package com.bookadmin.dao;

import java.util.List; 

import org.springframework.stereotype.Repository;

import com.bookadmin.model.Addbook;
import com.bookadmin.model.Orderadmin;

@Repository
public interface OrderDaoadmin {
	 public List<Orderadmin> getOrderByOpenid(String openid);
	 public List<Orderadmin> getOrderByOrderid(int orderid);
     public void deleteOrder(int orderid);
     public void updateOrder(Orderadmin orderadmin);
     public List<Orderadmin> getOrderByState(int orderState);
     public List<Orderadmin> getAllorder();
     public void add(int orderState,String startTime,String bookName,String bookStartPlace,String bookEndPlace,String endTime,int orderMoney,String openid,int bookid,String payTime,String bookimgurl);
}
