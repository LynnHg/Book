package com.bookadmin.controller;

import java.io.UnsupportedEncodingException; 
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.AbstractDocument.Content;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bookadmin.dao.UserDao;
import com.bookadmin.model.Sbook;
import com.bookadmin.model.User;
import com.bookadmin.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService us;
	@Autowired
	private UserDao ud;
	
	
	@RequestMapping(value="/user/alluser",method=RequestMethod.GET)
	@ResponseBody 
	public List<User> alluser(HttpServletRequest req){
		return us.getAllUser();
	}
	@RequestMapping(value="/user/add",method=RequestMethod.GET)
	@ResponseBody 
	public String add(HttpServletRequest req,HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String openid = req.getParameter("openid");
		String phone = req.getParameter("phone");
		String name = req.getParameter("name");
		int userState = Integer.valueOf(req.getParameter("userState"));
		int point = Integer.valueOf(req.getParameter("point"));
		int deposit = Integer.valueOf(req.getParameter("deposit"));
		User user=new User();
		user.setOpenid(openid);
		user.setPhone(phone);
		user.setName(name);
		user.setUserState(userState);
		user.setPoint(point);
		user.setDeposit(deposit);
		ud.add(user);
		return "<script>window.parent.location.reload()</script>";
	}
	@RequestMapping(value="/user/delete",method=RequestMethod.GET)
	@ResponseBody 
	public void delete(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String openid = req.getParameter("openid");
		ud.delete(openid);
	}
	
	
	
	
	@RequestMapping(value="/user/change",method=RequestMethod.GET)
	@ResponseBody 
	public String change(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String openid = req.getParameter("openid");
		String phone = req.getParameter("phone");
		String name = req.getParameter("name");
		int userState = Integer.valueOf(req.getParameter("userState"));
		int point = Integer.valueOf(req.getParameter("point"));
		int deposit = Integer.valueOf(req.getParameter("deposit"));
		User user=new User();
		user.setOpenid(openid);
		user.setPhone(phone);
		user.setName(name);
		user.setUserState(userState);
		user.setPoint(point);
		user.setDeposit(deposit);
		ud.change(user);
		return "<script>window.parent.location.reload()</script>";
	}
	
	@RequestMapping(value="/user/changeMoney",method=RequestMethod.GET)
	@ResponseBody 
	public void changeMoney(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String openid = req.getParameter("openid");
		double money = Double.valueOf(req.getParameter("money"));
		User user=new User();
		user.setOpenid(openid);
		user.setMoney(money);
		ud.changeMoney(user);
	}
	
	@RequestMapping(value="/user/changeDeposit",method=RequestMethod.GET)
	@ResponseBody 
	public void changeDeposit(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String openid = req.getParameter("openid");
		int deposit = Integer.parseInt(req.getParameter("deposit"));
		User user=new User();
		user.setOpenid(openid);
		user.setDeposit(deposit);
		ud.changeDeposit(user);
	}
	
	@RequestMapping(value="/user/saveinfo",method=RequestMethod.GET)
	@ResponseBody 
	public void saveInfo(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String openid = req.getParameter("openid");
		String phone = req.getParameter("phone");
		String name = req.getParameter("name");
		User user=new User();
		user.setOpenid(openid);
		user.setPhone(phone);
		user.setName(name);
		ud.saveInfo(user);
		
	}
	@RequestMapping(value="/user/bathDelete",method=RequestMethod.GET)
	@ResponseBody 
	public void bathDelete(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String checked = req.getParameter("checked");
		String[] openidArray = checked.split(",");
		for(int i=0;i<openidArray.length;i++){
			ud.delete(openidArray[i]);
		}
	}

	@RequestMapping(value="/user/searchByOpenid",method=RequestMethod.GET)
	@ResponseBody 
	public List<User> searchByOpenid(HttpServletRequest req){
		String openid=req.getParameter("openid");
		return ud.getUserByOpenid(openid);
	}
	
	@RequestMapping(value="/user/searchByPhone",method=RequestMethod.GET)
	@ResponseBody 
	public List<User> searchByhone(HttpServletRequest req){
		String phone=req.getParameter("phone");
		return ud.getUserByPhone(phone);
	}
	
	
	@RequestMapping(value="/user/searchByName",method=RequestMethod.GET)
	@ResponseBody 
	public List<User> searchByName(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String name = req.getParameter("name");
		List<User> lu = new ArrayList<User>();
		lu = ud.getUserByName(name);
		return  lu;
	}
}
	
