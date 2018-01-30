package com.bookadmin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bookadmin.dao.BookDao;
import com.bookadmin.dao.UserDao;
import com.bookadmin.model.Book;
import com.bookadmin.model.Orderadmin;
import com.bookadmin.model.User;
import com.bookadmin.service.OrderServiceadmin;

@Controller 
public class payController {
	@Autowired
	private UserDao ud;
	
	@Autowired
	private OrderServiceadmin os;
	
	@Autowired
	private BookDao bd;
	
	@RequestMapping(value="/pay",method=RequestMethod.GET)
	@ResponseBody 
	public void pay(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		// user info
		String openid = req.getParameter("openid");
		double money = Double.valueOf(req.getParameter("money"));
		
		// order info
		String orderid=req.getParameter("orderid");
		String orderMoney=req.getParameter("orderMoney");
		String orderState=req.getParameter("orderState");
		String payTime = req.getParameter("payTime");
		
		// book info
		int bookid = Integer.valueOf(req.getParameter("bookid"));
		
		User user=new User();
		user.setOpenid(openid);
		user.setMoney(money);
		
		Orderadmin order=new Orderadmin();
		order.setOrderid(Integer.valueOf(orderid));
        order.setOrderMoney(Integer.valueOf(orderMoney));
        order.setOrderState(Integer.valueOf(orderState));
        order.setPayTime(payTime);
        
		Book book = new Book();
		book.setBookid(bookid);
		
		// 更新余额
		ud.changeMoney(user);
		// 更新订单
		os.updateOrder(order);
		// 更新书籍借出次数
		bd.changeBookCount(book);
	}
}
