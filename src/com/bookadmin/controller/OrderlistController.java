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

import com.bookadmin.model.Lbook;
import com.bookadmin.model.Lorder;
import com.bookadmin.model.User;
import com.bookadmin.service.OrderlistService;

import net.sf.json.JSONObject;

@Controller
public class OrderlistController {

	@Autowired
	private OrderlistService ols;
	
	@RequestMapping(value="/orderlist",method=RequestMethod.POST)
	@ResponseBody
	public List<Lorder> selectLOrder(HttpServletRequest req)throws Throwable{
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
		List<Lorder> lo = new ArrayList<Lorder>();
		JSONObject jsonobject = JSONObject.fromObject(json);
		String openid = jsonobject.getString("openid");
		lo = ols.getOrderlist(openid);
		
		return lo;
	}
	

}
