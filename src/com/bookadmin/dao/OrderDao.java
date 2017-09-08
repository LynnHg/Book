package com.bookadmin.dao;

import org.springframework.stereotype.Repository; 

import com.bookadmin.model.Order;
@Repository
public interface OrderDao {
	public void openOrder(Order order);
	public void stopOrder(Order order);
	public Order getOrder(int bookid);
}
