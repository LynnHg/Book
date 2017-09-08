package com.bookadmin.controller;

import java.util.HashMap; 
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bookadmin.dao.AdminDao;
import com.bookadmin.model.Admin;
import com.bookadmin.service.AdminService;

@Controller
public class AdminController {	
	
	@Autowired
	private AdminService as;
	
	@RequestMapping(value="/admin/search",method=RequestMethod.GET)
 	@ResponseBody 
 		public List<Admin> search(HttpServletRequest req,HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String username = req.getParameter("username");//搜索词：用户名
		System.out.println(username);
		return as.search(username);
	}
			
	@RequestMapping(value="/admin/index",method=RequestMethod.POST)
	@ResponseBody 
	public void search1(HttpServletRequest req,HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		//Servlet本身并不输出响应到客户端，因此必须将请求转发
		RequestDispatcher rd;
		String username = req.getParameter("username");
		String password= req.getParameter("password");
		System.out.println("登录：！");
		System.out.println(username);
		System.out.println(password);
 		int c = as.search1(username,password);
		if(c == 1){
			System.out.println("登录成功！");
			HttpSession session = req.getSession(true);
			//设置session属性，跟踪用户会话状态
			session.setAttribute("username" , username);
			res.sendRedirect("../index.jsp");
 			}
 		else{
 			res.sendRedirect("../admin-login.jsp");//请求转发,在服务器端运行		
 		}
 	}
 	
	@RequestMapping(value="/admin/out")
	@ResponseBody 
	public void out(HttpServletRequest req,HttpServletResponse res) throws Throwable{
		System.out.println("退出成功");
		req.setCharacterEncoding("UTF-8");
		//session注销
		System.out.println("退出登录");
		HttpSession session = req.getSession(false);
		if(session != null){
			session.invalidate();
		}
		res.sendRedirect("../admin-login.jsp");
 	}

	@RequestMapping(value="/admin/searchAll",method=RequestMethod.GET)
	@ResponseBody 
	public List<Admin> searchAll(HttpServletRequest req)throws Throwable{
		req.setCharacterEncoding("UTF-8");
		System.out.println(as.searchAll());
		return as.searchAll();
	}
	
	@RequestMapping(value="/admin/add",method=RequestMethod.GET)
	@ResponseBody 
	public String add(HttpServletRequest req)throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		Admin a = new Admin();
		a.setUsername(username);
		a.setPassword(password);
		as.add(a);
		return "<script>window.parent.location.reload()</script>";
	}
	
	@RequestMapping(value="/admin/change",method=RequestMethod.GET)
	@ResponseBody 
	public String change(HttpServletRequest req)throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		Admin a = new Admin();
		a.setUsername(username);
		a.setPassword(password);
		as.change(a);
		return "<script>window.parent.location.reload()</script>";

	}
	
	
	@RequestMapping(value="/admin/delete",method=RequestMethod.GET)
	@ResponseBody 
	public void delete(HttpServletRequest req)throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String username = req.getParameter("username");
		//String password = req.getParameter("password");
		//Admin a = new Admin();
		//a.setUsername(username);
		//a.setPassword(password);
		as.delete(username);
		System.out.println("Delete successfully!");

	}
	
	
	@RequestMapping(value="/admin/bathDelete",method=RequestMethod.GET)
	@ResponseBody 
	public void bathDelete(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String checked = req.getParameter("checked");
		String[] ussernameArray = checked.split(",");
		for(int i=0;i<ussernameArray.length;i++){
			as.delete(ussernameArray[i]);
		}
	}

	}
	
	
