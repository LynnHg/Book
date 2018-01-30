package com.bookadmin.controller;

import java.io.BufferedReader; 
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bookadmin.dao.BooklistDao;
import com.bookadmin.model.Book;
import com.bookadmin.model.Sbook;
import com.bookadmin.service.BookSearchService;

import net.sf.json.JSONObject;

@Controller
public class BookSearchController {

	@Autowired
	private BookSearchService bss;
	@Autowired
	private BooklistDao bld;
	
	@RequestMapping(value="/SearchBookByStoreid",method=RequestMethod.GET)
	@ResponseBody
	public List<Sbook> SearchBookByStoreid(HttpServletRequest req) throws Throwable{
		List<Sbook> ls = new ArrayList<Sbook>();
		int storeid = Integer.valueOf(req.getParameter("storeid"));
		ls = bss.SearchBookByStoreid(storeid);
		return  ls;
	}
	
	@RequestMapping(value="/SearchBookByOpenid",method=RequestMethod.GET)
	@ResponseBody
	public List<Sbook> SearchBookByOpenid(HttpServletRequest req){
		List<Sbook> ls = new ArrayList<Sbook>();
		String openid = req.getParameter("openid");
		ls = bss.SearchBookByOpenid(openid);
		return  ls;
	}
	
	@RequestMapping(value="/SearchBookByKeyword",method=RequestMethod.POST)
	@ResponseBody
	public List<Sbook> SearchBookByKeyword(HttpServletRequest req) throws Throwable{
		InputStream inputStream = req.getInputStream();
	    InputStreamReader inputStreamReader = new InputStreamReader(inputStream);  
	    BufferedReader bufferedReader = new BufferedReader(inputStreamReader);  
	    StringBuffer sb = new StringBuffer(); 
	    String str = "";
	    while ((str = bufferedReader.readLine()) != null)  
        {  
            sb.append(str).append("\n");  
        }  
        String json = sb.toString();
		List<Sbook> ls = new ArrayList<Sbook>();
		JSONObject jsonobject = JSONObject.fromObject(json);
		String keyword = jsonobject.getString("keyword");
		ls = bss.SearchBookByKeyword(keyword);
		return  ls;
	}
	
	@RequestMapping(value="/SearchBookByBooknumber",method=RequestMethod.POST)
	@ResponseBody
	public Sbook SearchBookByBooknumber(HttpServletRequest req) throws Throwable{
		InputStream inputStream = req.getInputStream();
	    InputStreamReader inputStreamReader = new InputStreamReader(inputStream);  
	    BufferedReader bufferedReader = new BufferedReader(inputStreamReader);  
	    StringBuffer sb = new StringBuffer(); 
	    String str = "";
	    while ((str = bufferedReader.readLine()) != null)  
        {  
            sb.append(str).append("\n");  
        }  
        String json = sb.toString();
		Sbook sbook = new Sbook();
		JSONObject jsonobject = JSONObject.fromObject(json);
		String booknumber = jsonobject.getString("booknumber");
		sbook = bss.SearchBookByBooknumber(booknumber);
		return sbook;
	}
	
	@RequestMapping(value="/search",method=RequestMethod.GET)
	@ResponseBody 
	public List<Book> search(HttpServletRequest req) throws Throwable{	
		String bookname = req.getParameter("bookname");
		List<Book> lu = new ArrayList<Book>();
		lu = bld.getBookbyname(bookname);
		return  lu;
	}

	@RequestMapping(value="/searchbyid",method=RequestMethod.GET)
	@ResponseBody 
	public List<Book> searchbyid(HttpServletRequest req) throws Throwable{
		int bookid = Integer.valueOf(req.getParameter("bookid"));
		List<Book> lbu = new ArrayList<Book>();
		lbu = bld.getBookbyid(bookid);
		return  lbu;
	}
}
