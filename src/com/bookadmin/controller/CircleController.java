package com.bookadmin.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bookadmin.dao.CircleDao;
import com.bookadmin.filter.SLEmojiFilter;
import com.bookadmin.model.Circle;
import com.bookadmin.service.CircleService;



@Controller
public class CircleController {
	@Autowired
	private CircleService us;
	@Autowired
	private CircleDao ud;
	
	@RequestMapping(value="/circle/add",method=RequestMethod.GET)
	@ResponseBody 
	public String add(HttpServletRequest req,HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
	    String circleText = req.getParameter("circleText");
	    String circleTime = req.getParameter("circleTime");
		String circleState = req.getParameter("circleState");
		String openid = req.getParameter("openid");
		String nickName = req.getParameter("nickName");
		nickName = SLEmojiFilter.filterEmoji(nickName);
		String avatarUrl = req.getParameter("avatarUrl");
	
		ud.add(circleTime,circleText,circleState,openid,nickName,avatarUrl);


		return "<script>window.parent.location.reload()</script>";
	}
	@RequestMapping(value="/circle/delete",method=RequestMethod.GET)
	@ResponseBody 
	public void delete(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String circleid = req.getParameter("circleid");
	
		ud.delete(circleid);
	}
	@RequestMapping(value="/circle/bathDelete",method=RequestMethod.GET)
	@ResponseBody 
	public void bathDelete(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String checked = req.getParameter("checked");
		String[] circleid = checked.split(",");
		for(int i=0;i<circleid.length;i++){
			ud.delete(circleid[i]);
		}
	}
	
	
	@RequestMapping(value="/circle/change",method=RequestMethod.GET)
	@ResponseBody 
	public String change(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");	
		String circleid = req.getParameter("circleid");
		String circleText = req.getParameter("circleText");
		System.out.println(circleid);
		System.out.println(circleText);
		String circleState = getCircleState(circleText);
		
		ud.change(circleid,circleText,circleState);
		return "<script>window.parent.location.reload()</script>";
	}
	
	@RequestMapping(value="/circle/search",method=RequestMethod.GET)
	@ResponseBody 
	public List<Circle> circle(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		
			String openid = req.getParameter("openid");
			String circlemin = req.getParameter("datemin");
			String circlemax = req.getParameter("datemax");	
			List circles =  ud.getCircle(openid,circlemin,circlemax);
			return  circles;
			
		//List circles =  ud.getCircle(openid);
	}
	
	@RequestMapping(value="/circle/allcircle",method=RequestMethod.GET)
	@ResponseBody 
	public List<Circle> allcircle(HttpServletRequest req){
		return us.getAllcircle();
	}


	public static String getCircleState(String circleText){
		String circleState = "0";
		String[] badwords = {"���","ɵ��","����","���ֹ�","ϰ��ƽ"};
		for(int i = 0;i<badwords.length;i++){
			if(circleText.contains(badwords[i])){
				circleState="1";
				break;
			}
		}
		return circleState;
	}

	
}
