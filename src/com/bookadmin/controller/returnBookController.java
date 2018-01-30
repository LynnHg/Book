package com.bookadmin.controller;

import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.bookadmin.dao.BookDao;
import com.bookadmin.dao.OrderDaoadmin;
import com.bookadmin.dao.UserDao;
import com.bookadmin.model.Book;
import com.bookadmin.model.Orderadmin;

@Controller
public class returnBookController {

	@Autowired
	private OrderDaoadmin oda;

	@Autowired
	private BookDao bd;
	
	@Autowired
	private UserDao ud;

	@RequestMapping(value = "/returnBook", method = RequestMethod.GET)
	@ResponseBody
	public void returnBook(HttpServletRequest req) throws UnsupportedEncodingException {
		req.setCharacterEncoding("UTF-8");
		// order info
		String orderid = req.getParameter("orderid");
		String bookEndPlace = req.getParameter("bookEndPlace");
		String orderState = req.getParameter("orderState");
		String endTime = req.getParameter("endTime");
		Orderadmin order = new Orderadmin();

		// book info
		int bookid = Integer.valueOf(req.getParameter("bookid"));
		int storeid = Integer.valueOf(req.getParameter("storeid"));
		Book book = new Book();

		// user info
		String openid = req.getParameter("openid");
		
		order.setOrderid(Integer.valueOf(orderid));
		order.setBookEndPlace(bookEndPlace);
		order.setOrderState(Integer.valueOf(orderState));
		order.setEndTime(endTime);

		book.setBookid(bookid);
		book.setStoreid(storeid);

		// 更新订单
		oda.returnAndUpdate(order);
		// 更新书籍所在网点
		bd.changeBookStore(book);
		// 增加积分
		ud.addPoint(openid);
	}
}
