package com.bookadmin.controller;

import java.util.List;  

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bookadmin.dao.BookDao;
import com.bookadmin.dao.BooklistDao;
import com.bookadmin.model.User;
import com.bookadmin.model.Addbook;
import com.bookadmin.service.AddbookService;

@Controller
public class AddbookController {
	@Autowired
	private AddbookService as;
	@Autowired
	private BooklistDao bld;

	
//	@RequestMapping(value="/userid",method=RequestMethod.GET)
//	@ResponseBody 
//	public List<Addbook> userid(){
//		return as.getUserid();
//	}
//	
	

/*	@RequestMapping(value="/addbook",method=RequestMethod.POST)
	@ResponseBody 
	public void addBook(String json){
		as.addBook(json);
	}	*/
	
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
		bld.change(bookid, bookname,amount, bookcount, bookManPhone, bookState, bookPlace,bookMoney,storeid,bookRoute,tags0,bookimgurl,bookclass);
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
}
	
