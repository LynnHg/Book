package com.bookadmin.dao;

import java.util.List; 

import org.springframework.stereotype.Repository;

import com.bookadmin.model.Lbook;
import com.bookadmin.model.Lorder;
import com.bookadmin.model.User;

@Repository
public interface OrderlistDao {

	public List<Lorder> getOrderlist(String openid);
}
