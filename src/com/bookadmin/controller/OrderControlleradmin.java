package com.bookadmin.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;




import com.bookadmin.model.Orderadmin;
import com.bookadmin.service.OrderServiceadmin;


@Controller
public class OrderControlleradmin {
	
	@Autowired
	private OrderServiceadmin os;
	@RequestMapping(value="/order/allorder",method=RequestMethod.GET)
	@ResponseBody 
	//显示所有订单列表
	public List<Orderadmin> allorder(){
		return os.getAllorder();
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
		//System.out.println(orderid);
		return os.getOrderByOrderid(Integer.valueOf(orderid));
	}
	@RequestMapping(value="/order/deleteorder",method=RequestMethod.GET)
	@ResponseBody 
	public void deleteOrder(HttpServletRequest req) throws UnsupportedEncodingException{
		req.setCharacterEncoding("UTF-8");
		String orderid=req.getParameter("orderid");
		System.out.println(orderid);
		
		os.deleteOrder(Integer.valueOf(orderid));
	}
	@RequestMapping(value="/order/updateorder",method=RequestMethod.GET)
	@ResponseBody 
	public String updateOrder(HttpServletRequest req) throws UnsupportedEncodingException{
		req.setCharacterEncoding("UTF-8");
		String orderid=req.getParameter("orderid");
		String orderMoney=req.getParameter("orderMoney");
		String orderState=req.getParameter("orderState");
		System.out.println(orderState);
		Orderadmin order=new Orderadmin();
		order.setOrderid(Integer.valueOf(orderid));
        order.setOrderMoney(Integer.valueOf(orderMoney));
        order.setOrderState(Integer.valueOf(orderState));
		os.updateOrder(order);
		return "<script>window.parent.location.reload()</script>";
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
	
