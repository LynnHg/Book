package com.bookadmin.controller;

import java.io.BufferedReader; 
import java.io.IOException;
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

import com.bookadmin.model.Dorder;
import com.bookadmin.model.Sbook;
import com.bookadmin.service.OrderDetailService;

import net.sf.json.JSONObject;

@Controller
public class OrderDetailController {

	@Autowired
	private OrderDetailService ods;
	
	@RequestMapping(value="/getOrderDetail",method=RequestMethod.POST)
	@ResponseBody
	public Dorder getOrderDetail(HttpServletRequest req) throws Throwable{
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
		JSONObject jsonobject = JSONObject.fromObject(json);
		int orderid = jsonobject.getInt("orderid");
		Dorder d = new Dorder();
		d = ods.getOrderDetail(orderid);
		return d;
	}
}
