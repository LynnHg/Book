package com.bookadmin.controller;

import java.util.List;  

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bookadmin.dao.AddbookDao;
import com.bookadmin.dao.BookDao;
import com.bookadmin.dao.BooklistDao;
import com.bookadmin.model.User;
import com.bookadmin.model.Addbook;
import com.bookadmin.model.Book;
import com.bookadmin.service.AddbookService;

@Controller
public class AddbookController {
	@Autowired
	private AddbookService as;
	@Autowired
	private BooklistDao bld;
	
	@Autowired
	private BookDao bd;
	
	@Autowired
	private AddbookDao abd;

	@RequestMapping(value="/book/add",method=RequestMethod.GET)
	@ResponseBody 
	public String add(HttpServletRequest req,HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
	    String bookname = req.getParameter("bookname");
		int bookcount = Integer.valueOf(req.getParameter("bookcount"));
		String bookManPhone = req.getParameter("bookManPhone");
		int bookState = Integer.valueOf(req.getParameter("plugin"));
		String bookPlace = req.getParameter("bookPlace");
		double bookMoney = Double.valueOf(req.getParameter("bookMoney"));
		int storeid = Integer.valueOf(req.getParameter("storeid"));
		String bookRoute = req.getParameter("bookRoute");
		String tags0 = req.getParameter("tags0");
		String bookimgurl = req.getParameter("bookimgurl");
		String bookclass = req.getParameter("bookclass");		
		as.add(bookname, bookcount, bookManPhone, bookState, bookPlace,bookMoney,storeid,bookRoute,tags0,bookimgurl,bookclass);
		
		return "<script>window.parent.location.reload()</script>";
	}
	
	@RequestMapping(value="/book/shareAdd",method=RequestMethod.GET)
	@ResponseBody 
	public void shareAdd(HttpServletRequest req,HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		
		String bookname = req.getParameter("bookname");
		String author = req.getParameter("author");
		String bookManPhone = req.getParameter("bookManPhone");
		int bookState = Integer.valueOf(req.getParameter("bookState"));
		double bookMoney = Double.valueOf(req.getParameter("bookMoney"));
		int bookcount = Integer.valueOf(req.getParameter("bookcount"));
		String bookIntroduce = req.getParameter("bookIntroduce");
		int amount = Integer.valueOf(req.getParameter("amount"));
		int storeid = Integer.valueOf(req.getParameter("storeid"));
		String bookimgurl = req.getParameter("bookimgurl");
		String average = req.getParameter("average");
		String publisher = req.getParameter("publisher");
		String pubdate = req.getParameter("pubdate");
		String tags0 = req.getParameter("tags0");
		String tags1 = req.getParameter("tags1");
		String tags2 = req.getParameter("tags2");
		String bookProvider = req.getParameter("bookProvider");
		String openid = req.getParameter("openid");
		String sharedTime = req.getParameter("sharedTime");
		
		abd.shareAdd(bookname,author,bookManPhone,bookState,bookMoney,
				bookcount,bookIntroduce,amount,storeid,bookimgurl,average,publisher,pubdate,
				tags0,tags1,tags2,bookProvider,openid,sharedTime);
		
	}
	
	@RequestMapping(value="/book/delete",method=RequestMethod.GET)
	@ResponseBody 
	public void delete(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String bookid = req.getParameter("bookid");
		bld.delete(bookid);
	}
	
	@RequestMapping(value="/book/bathDelete",method=RequestMethod.GET)
	@ResponseBody 
	public void bathDelete(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String checked = req.getParameter("checked");
		String[] bookidArray = checked.split(",");
		for(int i=0;i<bookidArray.length;i++){
			bld.delete(bookidArray[i]);
		}
	}
	
	@RequestMapping(value="/book/change",method=RequestMethod.GET)
	@ResponseBody 
	public String change(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		int bookid = Integer.valueOf(req.getParameter("bookid"));
		int amount = Integer.valueOf(req.getParameter("amount"));
		String bookname = req.getParameter("bookname");
		int bookcount = Integer.valueOf(req.getParameter("bookcount"));
		String bookManPhone = req.getParameter("bookManPhone");
		int bookState = Integer.valueOf(req.getParameter("plugin"));
		String bookPlace = req.getParameter("bookPlace");
		double bookMoney = Double.valueOf(req.getParameter("bookMoney"));
		int storeid = Integer.valueOf(req.getParameter("storeid"));
		String bookRoute = req.getParameter("bookRoute");
		String tags0 = req.getParameter("tags0");
		String bookimgurl = req.getParameter("bookimgurl");
		String bookclass = req.getParameter("bookclass");
		String average = "7";
		bld.change(bookid, bookname,amount, bookcount, bookManPhone, bookState, bookPlace,bookMoney,storeid,bookRoute,tags0,bookimgurl,bookclass,average);
		return "<script>window.parent.location.reload()</script>";
	}
	
	//增加书籍
		@RequestMapping(value="/store/storeBookAmount",method=RequestMethod.GET)
		@ResponseBody 
		public String changeBookAmount(HttpServletRequest req, HttpServletResponse res) throws Throwable{
			req.setCharacterEncoding("UTF-8");
			int bookid = Integer.valueOf(req.getParameter("bookid"));
			String addBooks = req.getParameter("addBooks");
			bld.changeBookAmount(bookid,addBooks);
			return "<script>window.location.reload()</script>";
		}
		
		@RequestMapping(value="/store/changeBookStore",method=RequestMethod.GET)
		@ResponseBody 
		public void changeBookStore(HttpServletRequest req, HttpServletResponse res) {
			int bookid = Integer.valueOf(req.getParameter("bookid"));
			int storeid = Integer.valueOf(req.getParameter("storeid"));
			Book book = new Book();
			book.setBookid(bookid);
			book.setStoreid(storeid);
			bd.changeBookStore(book);
		}
		
		//被借次数
		@RequestMapping(value="/book/changeBookCount",method=RequestMethod.GET)
		@ResponseBody 
		public void changeBookCount(HttpServletRequest req, HttpServletResponse res) {
			int bookid = Integer.valueOf(req.getParameter("bookid"));
			Book book = new Book();
			book.setBookid(bookid);
			bd.changeBookCount(book);
		}
}
	
