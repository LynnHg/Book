package com.bookadmin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bookadmin.dao.LovingbookDao;

@Controller
public class LovingbookController {

	@Autowired
	private LovingbookDao lbd;
	
	@RequestMapping(value="/lovingbook/addLovingbook",method=RequestMethod.GET)
	@ResponseBody 
	public void addLovingbook(HttpServletRequest req) throws Throwable {
		req.setCharacterEncoding("UTF-8");
	    String openid = req.getParameter("openid");
	    int bookid = Integer.parseInt(req.getParameter("bookid"));
		lbd.addLovingbook(bookid,openid);
	}
}
