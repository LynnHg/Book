package com.bookadmin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;



import com.bookadmin.dao.GuideDao;
import com.bookadmin.model.Guide;
import com.bookadmin.service.GuideService;


@Controller
public class GuideController {
	@Autowired
	private GuideService gs;
	@Autowired
	private GuideDao gd;
	
	
	@RequestMapping(value="/guide/guidecount",method=RequestMethod.GET)
	@ResponseBody 
	public int guidecount(){
		int guidecount = gs.getGuidecount();
		return guidecount;
	}
	
	@RequestMapping(value="/guide/allguide",method=RequestMethod.GET)
	@ResponseBody 
	public List<Guide> allguide(HttpServletRequest req){
		return gs.getAllguide();
	}
	
	
	/**
	 * 测试 ，以下简写
	 */
	@RequestMapping(value="/guide/search",method=RequestMethod.GET)
	@ResponseBody 
	public List<Guide> search(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String guideid = req.getParameter("guideid");
		//System.out.println(guideid);
		List<Guide> lu = new ArrayList<Guide>();
		lu = gd.getGuide(guideid);
		return  lu;
	}
	@RequestMapping(value="/guide/search1",produces = "text/html;charset=UTF-8")
	@ResponseBody 
	public String search1(String guideid) throws Throwable{
		List<Guide> lu = new ArrayList<Guide>();
		lu = gd.getGuide(guideid);
		String guideText=lu.get(0).getGuideText();
		return  guideText;
	}
//	@RequestMapping(value="/guide/searchGuideState",method=RequestMethod.GET)
//	@ResponseBody 
//	  public List<Guide> searchstate(HttpServletRequest req)throws Throwable{
//		req.setCharacterEncoding("UTF-8");
//		String guideState = req.getParameter("guideState");
//		System.out.println(guideState);
//		List<Guide> lu = new ArrayList<Guide>();
//		lu = gd.getGuide(guideState);
//		  return lu;
//	  }
	//模糊查询
		@RequestMapping(value="/guide/searchGuideText",method=RequestMethod.GET)
		@ResponseBody 
		public List<Guide> searchGuideText(HttpServletRequest req) throws Throwable{
			req.setCharacterEncoding("UTF-8");
			String guideText = req.getParameter("guideid");
			//System.out.println(guideText);
			List<Guide> lu = new ArrayList<Guide>();
			lu = gd.getGuideText(guideText);
			return  lu;
		}

	//增加
	@RequestMapping(value="/guide/add",method=RequestMethod.GET)
	@ResponseBody 
	public String add(HttpServletRequest req,HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
	    
		String guideTime = req.getParameter("guideTime");
		System.out.println("guideTime:"+guideTime);
//		int guideState = Integer.valueOf(req.getParameter("guideState"));
		int guideState =Integer.parseInt(req.getParameter("guideState"));
		System.out.println(",guideState"+guideState);
		String guideText = req.getParameter("guideText");
		System.out.println("guideTime:"+guideTime+",guideText:"+guideText+",guideState"+guideState);
		gd.add(guideTime,guideText,guideState);
		return "<script>window.parent.location.reload()</script>";
	}
	//删除
	@RequestMapping(value="/guide/delete",method=RequestMethod.GET)
	@ResponseBody 
	public void delete(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		
		int guideid = Integer.valueOf(req.getParameter("guideid"));
		
		gd.delete(guideid);
		
	}
	
	//id查询
	@RequestMapping(value="/searchByguideid",method=RequestMethod.GET)
	@ResponseBody 
	public Guide searchByguideid(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		int guideid = Integer.valueOf(req.getParameter("guideid"));
		Guide u = new  Guide();
		u = (Guide) gd.searchByguideid(guideid);
		return  u;
	}
	
	//修改
	@RequestMapping(value="/guide/change",method=RequestMethod.GET)
	@ResponseBody 
	public String change(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");

		int guideid = Integer.valueOf(req.getParameter("guideid"));
		String guideTime = req.getParameter("guideTime");
		int guideState = Integer.valueOf(req.getParameter("guideState"));
		String guideText = req.getParameter("guideText");
		
		gd.change(guideid,guideTime,guideText,guideState);
		return "<script>window.parent.location.reload()</script>";
	}
	//批量删除
	@RequestMapping(value="/guide/bathDelete",method=RequestMethod.GET)
	@ResponseBody 
	public void bathDelete(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String checked = req.getParameter("checked");
		//分割成数组取出guideid
		String[] guideidArray = checked.split(",");
		for(int i=0;i<guideidArray.length;i++){
			gd.bathDelete(guideidArray[i]);
		}
		
	}
}
	
