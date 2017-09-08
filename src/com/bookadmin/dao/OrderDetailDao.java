package com.bookadmin.dao;

import org.springframework.stereotype.Repository; 

import com.bookadmin.model.Dorder;

@Repository
public interface OrderDetailDao {

	public Dorder getOrderDetail(int orderid);
}
