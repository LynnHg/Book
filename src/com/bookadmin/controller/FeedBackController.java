package com.bookadmin.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.AbstractDocument.Content;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bookadmin.dao.FeedBackDao;
import com.bookadmin.model.FeedBack;
import com.bookadmin.service.FeedBackService;
import com.bookadmin.filter.FeedBackFilter;



@SuppressWarnings("unused")
@Controller//负责注册一个bean 到spring 上下文中
public class FeedBackController {
	@Autowired
	private FeedBackService us;
	@Autowired
	private FeedBackDao ud;
	
	// 注解为控制器指定可以处理哪些 URL 请求
	//得到count数目
	@RequestMapping(value="/feedback/FeedBackcount",method=RequestMethod.GET)
	@ResponseBody 
	//读取Request请求的body部分数据，再把HttpMessageConverter返回的对象数据绑定到 controller中方法的参数上
	public int FeedBackcount(){
		int FeedBackcount = us.getFeedBackcount();
		return FeedBackcount;
	}
	//获得feedback
	@RequestMapping(value="/feedback/allFeedBack",method=RequestMethod.GET)
	@ResponseBody 
	public List<FeedBack> allFeedBack(HttpServletRequest req){
		return us.getAllFeedBack();
	}
	
	
	/**
	 * 
	 */
	
	//通过openid进行查询
	@RequestMapping(value="/feedback/search",method=RequestMethod.GET)
	@ResponseBody 
	public List<FeedBack> search(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String openid = req.getParameter("openid");
		List<FeedBack> lu = new ArrayList<FeedBack>();
		lu = ud.getFeedBack(openid);
		return lu;
	}
	
	//
	@RequestMapping(value="/feedback/searchstate",method=RequestMethod.GET)
	@ResponseBody 
	  public List<FeedBack> searchstate(HttpServletRequest req)throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String feedbackState = req.getParameter("name");
		System.out.println(feedbackState);
		List<FeedBack> lu = new ArrayList<FeedBack>();
		lu = ud.getFeedBack(feedbackState);
		  return lu;
	  }
	
	
	//添加反馈信息
	@SuppressWarnings("static-access")
	@RequestMapping(value="/feedback/add",method=RequestMethod.GET)
	@ResponseBody 
	public String add(HttpServletRequest req,HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		FeedBackFilter feedBackFilter=new FeedBackFilter();
		//int  feedbackid = Integer.valueOf(req.getParameter("feedbackid"));
	    String feedbackTime =req.getParameter("feedbackTime");
		String feedbackText = req.getParameter("feedbackText");
		int feedbackState = Integer.valueOf(req.getParameter("feedbackState"));
		String  feedbackResult = req.getParameter("feedbackResult");
		String openid = req.getParameter("openid");
		ud.add(feedbackTime,feedBackFilter.StringFilter(feedbackText),feedbackState,feedBackFilter.StringFilter(feedbackResult),openid);
		return "<script>window.parent.location.reload()</script>";
	}

	
	//逐一删除
	@RequestMapping(value="/feedback/delete",method=RequestMethod.GET)
	@ResponseBody 
	public void delete(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String feedbackid = req.getParameter("feedbackid");
		ud.delete(feedbackid);
	}
	
	//通过feedbackid删除
	@RequestMapping(value="/feedback/deleteFeedBack",method=RequestMethod.GET)
	@ResponseBody 
	public void deleteFeedBack(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		int  feedbackid = Integer.valueOf(req.getParameter("feedbackid"));
		ud.deleteFeedBack(feedbackid);
	}
	
	
	@RequestMapping(value="/searchByfeedbackid",method=RequestMethod.GET)
	@ResponseBody 
	public FeedBack searchByopenid(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String feedbackid = req.getParameter("feedbackid");
		FeedBack u = new  FeedBack();
		u = (FeedBack) ud.searchByfeedbackid(feedbackid);
		return  u;
	}
	
	
	//反馈信息进行处理
	@SuppressWarnings("static-access")
	@RequestMapping(value="/feedback/change",method=RequestMethod.GET)
	@ResponseBody 
	public String change(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		FeedBackFilter feedBackFilter=new FeedBackFilter();
		int  feedbackid = Integer.valueOf(req.getParameter("feedbackid"));
	    String feedbackTime =req.getParameter("feedbackTime");
		String feedbackText = req.getParameter("feedbackText");
		int feedbackState = Integer.valueOf(req.getParameter("feedbackState"));
		String  feedbackResult = req.getParameter("feedbackResult");
		String openid = req.getParameter("openid");
		ud.change(feedbackid, feedbackTime,feedBackFilter.StringFilter(feedbackText),feedbackState,feedBackFilter.StringFilter(feedbackResult),openid);
		return "<script>window.parent.location.reload()</script>";
	}
	
	//批量删除
	@RequestMapping(value="/feedback/bathDelete",method=RequestMethod.GET)
	@ResponseBody 
	public void bathDelete(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String checked = req.getParameter("checked");
		String[] feedbackidArray = checked.split(",");
		for(int i=0;i<feedbackidArray.length;i++){
			ud.delete(feedbackidArray[i]);
		}
	}
	
	//查询feedbackState处理中
	@RequestMapping(value="/feedback/bathselect",method=RequestMethod.GET)
	@ResponseBody 
	public List<FeedBack> bathselect(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String openid = req.getParameter("openid");
		String feedbackState = "0";
		String result0="处理中";
		String result1="已处理";
		List<FeedBack> lu = new ArrayList<FeedBack>();
		if(openid.equals(result0)){
			lu = ud.bathSelect(feedbackState);
		}else if(openid.equals(result1)){
			feedbackState="1";
			lu = ud.bathSelect(feedbackState);
		}else{
			lu = ud.bathSelect(feedbackState);
		}
		return  lu;
	}
	
	//相似查询
	@RequestMapping(value="/feedback/searchfeedbackText",method=RequestMethod.GET)
	@ResponseBody 
	public List<FeedBack> searchfeedbackText(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String feedbackState = "0";
		
		String result0="处理中";
		String result1="已处理";
		String result2="null";
		String feedbackText = req.getParameter("openid");
		String firstfeedbackTime =req.getParameter("firstfeedbackTime");
		String lastfeedbackTime =req.getParameter("lastfeedbackTime");
		System.out.println(firstfeedbackTime);
		//System.out.println(feedbackText);
		List<FeedBack> lu = new ArrayList<FeedBack>();
		
		if(firstfeedbackTime==null||lastfeedbackTime==null||firstfeedbackTime==""||lastfeedbackTime==""){
		if(feedbackText.equals(result0)){
			lu = ud.bathSelect(feedbackState);
			return  lu;
		}else if(feedbackText.equals(result1)){
			feedbackState="1";
			lu = ud.bathSelect(feedbackState);
			return  lu;
		}else{
			lu = ud.getfeedbackText(feedbackText);
			return  lu;
		}}else {
			if(feedbackText==null||feedbackText==""){
			 lu = ud.getfeedbackTime(firstfeedbackTime,lastfeedbackTime);
			 return  lu;
			}
			else{
				if(feedbackText.equals(result0)){
					lu = ud.getfeedbackStateTime(feedbackState,firstfeedbackTime,lastfeedbackTime);
					return  lu;
				}else if(feedbackText.equals(result1)){
					feedbackState="1";
					lu = ud.getfeedbackStateTime(feedbackState,firstfeedbackTime,lastfeedbackTime);
					return  lu;
				}else{
					lu = ud.getfeedbackTextTime(feedbackText,firstfeedbackTime,lastfeedbackTime);
					return  lu;
				}
			}
		}
		
		
	}
	
	
	
	}

