package com.bookadmin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bookadmin.dao.ActDao;
import com.bookadmin.model.Act;

@Controller
public class ActController {

	@Autowired
	private ActDao ad;
	
	@RequestMapping(value="/activity/allAct",method=RequestMethod.GET)
	@ResponseBody 
	public List<Act> getAllAct(HttpServletRequest req) {
		return ad.getAllAct();
	}
}
