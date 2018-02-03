package com.bookadmin.controller;

import java.io.UnsupportedEncodingException;
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
	
	@RequestMapping(value="/activity/addAct",method=RequestMethod.GET)
	@ResponseBody 
	public void addAct(HttpServletRequest req) throws Throwable {
		req.setCharacterEncoding("UTF-8");
	    String openid = req.getParameter("openid");
	    String activeName = req.getParameter("activeName");
	    String activeText = req.getParameter("activeText");
	    String activeTime = req.getParameter("activeTime");
	    String activePlace = req.getParameter("activePlace");
		ad.addAct(openid,activeName,activeText,activeTime,activePlace);
	}
}
