package com.bookadmin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.bookadmin.dao.LovingbookDao;
import com.bookadmin.model.Lovingbook;

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
	
	@RequestMapping(value="/lovingbook/removeLovingbook",method=RequestMethod.GET)
	@ResponseBody 
	public void removeLovingbook(HttpServletRequest req) throws Throwable {
		req.setCharacterEncoding("UTF-8");
	    String openid = req.getParameter("openid");
	    int bookid = Integer.parseInt(req.getParameter("bookid"));
		lbd.removeLovingbook(bookid,openid);
	}
	
	@RequestMapping(value="/lovingbook/getLovingbook",method=RequestMethod.GET)
	@ResponseBody 
	public List<Lovingbook> getLovingbook(HttpServletRequest req) throws Throwable {
		req.setCharacterEncoding("UTF-8");
	    String openid = req.getParameter("openid");
	    int bookid = Integer.parseInt(req.getParameter("bookid"));
		return lbd.getLovingbook(bookid,openid);
	}
}
