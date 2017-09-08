package com.bookadmin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookadmin.dao.CircleDao;
import com.bookadmin.model.Circle;



@Service
public class CircleService {
	@Autowired
	private CircleDao ud;

	
	public List<Circle> getAllcircle(){
		return ud.getAllcircle();
	}
}
