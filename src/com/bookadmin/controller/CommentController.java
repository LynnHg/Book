package com.bookadmin.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Calendar;
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

import com.bookadmin.dao.CommentDao;
import com.bookadmin.filter.SLEmojiFilter;
import com.bookadmin.model.Comment;
import com.bookadmin.service.CommentService;



@Controller//负责注册一个bean 到spring 上下文中
public class CommentController {
	@Autowired
	private CommentService cs;
	@Autowired
	private CommentDao cd;
	
	
	// 注解为控制器指定可以处理哪些 URL 请求
	@RequestMapping(value="/comment/Commentcount",method=RequestMethod.GET)
	@ResponseBody 
	//读取Request请求的body部分数据，再把HttpMessageConverter返回的对象数据绑定到 controller中方法的参数上
	public int Commentcount(){
		int Commentcount = cs.getCommentcount();
		return Commentcount;
	}
	
	@RequestMapping(value="/comment/allcomment",method=RequestMethod.GET)
	@ResponseBody 
	public List<Comment> allComment(HttpServletRequest req){
		return cs.getallComment();
	}
	
	@RequestMapping(value="/comment/getCommentByBookid",method=RequestMethod.GET)
	@ResponseBody 
	public List<Comment> getCommentByBookid(HttpServletRequest req){
		int bookid = Integer.valueOf(req.getParameter("bookid"));
		return cd.getCommentByBookid(bookid);
	}
	
	@RequestMapping(value="/comment/addComment",method=RequestMethod.GET)
	@ResponseBody //结果以
	public String add(HttpServletRequest req,HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
	    String commentTime = req.getParameter("commentTime");
	    int commentState =  Integer.valueOf(req.getParameter("commentState"));
		String commentText = req.getParameter("commentText");
		String bookid = req.getParameter("bookid");
		String openid = req.getParameter("openid");
		String nickName = req.getParameter("nickName");
		nickName = SLEmojiFilter.filterEmoji(nickName);
		String avatarUrl = req.getParameter("avatarUrl");
		
		cd.addComment(commentTime,commentText,commentState,bookid,openid,nickName,avatarUrl);
		
		return "<script>window.parent.location.reload()</script>";
	}
	
	@RequestMapping(value="/comment/delete",method=RequestMethod.GET)
	@ResponseBody 
	public void delete(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		int commentid = Integer.valueOf(req.getParameter("commentid"));
		cd.deleteCommentByCommentid(commentid);
	}
	
	@RequestMapping(value="/comment/deletecomment",method=RequestMethod.GET)
	@ResponseBody 
	public void deletecomment(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		int  commentid = Integer.valueOf(req.getParameter("commentid"));
		cd.deleteCommentByCommentid(commentid);
	}
	
	@RequestMapping(value="/comment/update",method=RequestMethod.GET)
	@ResponseBody 
	public String change(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		int  commentid = Integer.valueOf(req.getParameter("commentid"));
	    String commentTime =req.getParameter("commentTime");
		String commentText = req.getParameter("commentText");
		int commentState = Integer.valueOf(req.getParameter("commentState"));
		String bookid = req.getParameter("bookid");
		cd.updateComment(commentid, commentTime, commentText, commentState, bookid);
		return "<script>window.parent.location.reload()</script>";
	}
	
	@RequestMapping(value="/comment/bathDelete",method=RequestMethod.GET)
	@ResponseBody 
	public void bathDelete(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String checked = req.getParameter("checked");
		//分割成数组取出openid
		String[] commentidArray = checked.split(",");
		for(int i=0;i<commentidArray.length;i++){
			cd.deleteCommentByCommentid(commentidArray[i]);
		}
	}
	
	@RequestMapping(value="/searchall",method=RequestMethod.GET)
	@ResponseBody 
	public List<Comment> searchall(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		boolean result = false;
		String commentText = req.getParameter("commentText");
		
		if(commentText!=null&&commentText!="")
		{result=commentText.matches("[0-9]+");}
		
		String datemin =req.getParameter("datemin");
		
		Calendar   c   =   Calendar.getInstance();
		  int   year   =   c.get(Calendar.YEAR);       
		  int   month   =   c.get(Calendar.MONTH)+1; 
		  int   date   =   c.get(Calendar.DATE);        
		  String nowTime = year + "-" + month + "-" + date ;
		String datemax =req.getParameter("datemax");
		if(datemax==null ||datemax=="" ){
			datemax= nowTime;
		}
		if(datemin==null || datemin=="" ){
			datemin="1996-01-01";
		}
		List<Comment> lu = new ArrayList<Comment>();
		
		if(commentText!=null&&commentText!=""){
		if(result){
			int  commentid = Integer.valueOf(req.getParameter("commentid"));
			System.out.println(commentid);
			lu=cd.searchAndTime(datemin, datemax, commentid, commentText);
		}
		else{
			lu=cd.selectByTimeAndText(datemin, datemax, commentText);	
			}
		
		}
		else{
			lu=cd.selectByTime(datemin, datemax);	
		}
		return lu;
	
	
	}
}


	
	






