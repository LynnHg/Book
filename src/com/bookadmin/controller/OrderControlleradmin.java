package com.bookadmin.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bookadmin.dao.OrderDaoadmin;
import com.bookadmin.dao.StoreDao;
import com.bookadmin.model.Orderadmin;
import com.bookadmin.service.OrderServiceadmin;


@Controller
public class OrderControlleradmin {
	
	@Autowired
	private OrderServiceadmin os;
	
	@Autowired
	private OrderDaoadmin oda;
	
	@RequestMapping(value="/order/allorder",method=RequestMethod.GET)
	@ResponseBody 
	//显示所有订单列表
	public List<Orderadmin> allorder(){
		return os.getAllorder();
	}
	
	@RequestMapping(value="/order/add",method=RequestMethod.GET)
	@ResponseBody 
	public void add(HttpServletRequest req,HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		int orderState=Integer.parseInt(req.getParameter("orderState"));	
		String startTime=req.getParameter("startTime");
		String bookName=req.getParameter("bookName");
		String bookStartPlace=req.getParameter("bookStartPlace");
		String bookEndPlace=req.getParameter("bookEndPlace");
		String endTime=req.getParameter("endTime");
		int orderMoney=Integer.parseInt(req.getParameter("orderMoney"));
		String openid=req.getParameter("openid");
		int bookid=Integer.parseInt(req.getParameter("bookid"));
		String payTime=req.getParameter("payTime");
		String bookimgurl=req.getParameter("bookimgurl");
		oda.add(orderState,startTime,bookName,bookStartPlace,bookEndPlace,endTime,orderMoney,openid,bookid,payTime,bookimgurl);
		
	}
	
	
	@RequestMapping(value="/order/getorderbyopenid",method=RequestMethod.GET)
	@ResponseBody 
	public List<Orderadmin> getOrderByOpenid(HttpServletRequest req){
		String openid=req.getParameter("openid");
		
		
		return os.getOrderByOpenid(openid);
	}
	@RequestMapping(value="/order/getorderbyorderid",method=RequestMethod.GET)
	@ResponseBody 
	public List<Orderadmin> getOrderByOrderid(HttpServletRequest req){
		
		String orderid=req.getParameter("orderid");
		return os.getOrderByOrderid(Integer.valueOf(orderid));
	}
	
	@RequestMapping(value="/order/deleteorder",method=RequestMethod.GET)
	@ResponseBody 
	public void deleteOrder(HttpServletRequest req) throws UnsupportedEncodingException{
		req.setCharacterEncoding("UTF-8");
		String orderid=req.getParameter("orderid");
		os.deleteOrder(Integer.valueOf(orderid));
	}
	@RequestMapping(value="/order/updateorder",method=RequestMethod.GET)
	@ResponseBody 
	public String updateOrder(HttpServletRequest req) throws UnsupportedEncodingException{
		req.setCharacterEncoding("UTF-8");
		String orderid=req.getParameter("orderid");
		String orderMoney=req.getParameter("orderMoney");
		String orderState=req.getParameter("orderState");
		String payTime = req.getParameter("payTime");
		Orderadmin order=new Orderadmin();
		order.setOrderid(Integer.valueOf(orderid));
        order.setOrderMoney(Integer.valueOf(orderMoney));
        order.setOrderState(Integer.valueOf(orderState));
        order.setPayTime(payTime);
		os.updateOrder(order);
		return "<script>window.parent.location.reload()</script>";
	}
	
	@RequestMapping(value="/order/returnAndUpdate",method=RequestMethod.GET)
	@ResponseBody 
	public void returnAndUpdate(HttpServletRequest req) throws UnsupportedEncodingException{
		req.setCharacterEncoding("UTF-8");
		String orderid=req.getParameter("orderid");
		String bookEndPlace=req.getParameter("bookEndPlace");
		String orderState=req.getParameter("orderState");
		String endTime = req.getParameter("endTime");
		Orderadmin order=new Orderadmin();
		order.setOrderid(Integer.valueOf(orderid));
        order.setBookEndPlace(bookEndPlace);
        order.setOrderState(Integer.valueOf(orderState));
        order.setEndTime(endTime);
        oda.returnAndUpdate(order);
	}
	
	@RequestMapping(value="/order/getorderbystate",method=RequestMethod.GET)
	@ResponseBody 
	 public List<Orderadmin> getOrderByState(HttpServletRequest req){
		String orderState=req.getParameter("orderState");
		//System.out.println(orderState);
		System.out.println(os.getOrderByState(Integer.valueOf(orderState)).get(0).getOrderid());
    	return os.getOrderByState(Integer.valueOf(orderState));
    }
}
	
