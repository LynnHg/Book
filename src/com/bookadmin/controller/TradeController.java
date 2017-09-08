package com.bookadmin.controller;

import java.io.UnsupportedEncodingException; 
import java.util.ArrayList;
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
import com.bookadmin.dao.TradeDao;
import com.bookadmin.model.Trade;


@Controller
public class TradeController {
	
	@Autowired
	private TradeDao td;
		
	@RequestMapping(value="/trade/alltrade",method=RequestMethod.GET)
	@ResponseBody 
	public List<Trade> alltrade(HttpServletRequest req){
		return td.getAlltrade();
	}
	
	@RequestMapping(value="/trade/add",method=RequestMethod.GET)
	@ResponseBody 
	public String add(HttpServletRequest req,HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String tradeTime = req.getParameter("tradeTime");
		int tradeWay = Integer.valueOf(req.getParameter("plugin1"));
		float tradeMoney = Float.valueOf(req.getParameter("tradeMoney"));
		String openid = req.getParameter("openid");
		int orderid = Integer.valueOf(req.getParameter("orderid"));
		int tradeFlag = Integer.valueOf(req.getParameter("plugin"));
		td.add(tradeTime, tradeWay, tradeMoney, openid, orderid,tradeFlag);
		return "<script>window.parent.location.reload()</script>";
	}
	
	@RequestMapping(value="/trade/change",method=RequestMethod.GET)
	@ResponseBody 
	public String change(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String tradeid = req.getParameter("tradeid");
		String tradeTime = req.getParameter("tradeTime");
		int tradeWay = Integer.valueOf(req.getParameter("plugin1"));
		float tradeMoney = Float.valueOf(req.getParameter("tradeMoney"));
		String openid = req.getParameter("openid");
		int orderid = Integer.valueOf(req.getParameter("orderid"));
		int tradeFlag = Integer.valueOf(req.getParameter("plugin"));
		td.change(tradeid, tradeTime, tradeWay, tradeMoney, openid, orderid,tradeFlag);
		return "<script>window.parent.location.reload()</script>";
	}
	
	@RequestMapping(value="/trade/delete",method=RequestMethod.GET)
	@ResponseBody 
	public void delete(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String tradeid = req.getParameter("tradeid");
		td.delete(tradeid);
	}
	
	@RequestMapping(value="/searchbytradeid",method=RequestMethod.GET)
	@ResponseBody 
	public List<Trade> search(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String tradeid = req.getParameter("tradeid");
		List<Trade> ld = new ArrayList<Trade>();
		ld = td.getTradebytradeid(tradeid);		
		return  ld;
	}
	
	@RequestMapping(value="/trade/bathDelete",method=RequestMethod.GET)
	@ResponseBody 
	public void bathDelete(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String checked = req.getParameter("checked");
		//分割成数组取出ostoreid		
		String[] tradeidArray = checked.split(",");
		for(int i=0;i<tradeidArray.length;i++){
			td.delete(tradeidArray[i]);
		}
	}

}
	
