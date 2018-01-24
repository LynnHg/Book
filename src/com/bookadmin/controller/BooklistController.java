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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bookadmin.model.Book;
import com.bookadmin.model.Lbook;
import com.bookadmin.model.User;
import com.bookadmin.service.BooklistService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class BooklistController {
	@Autowired
	private BooklistService bls;
	@RequestMapping(value="/booklist",method=RequestMethod.POST)
	@ResponseBody 
	public List<Lbook> selectLbook(HttpServletRequest req) throws Throwable{
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
		List<Lbook> lb = new ArrayList<Lbook>();
		JSONObject jsonobject = JSONObject.fromObject(json);
		String city = jsonobject.getString("city");
		double ulatitude = Double.valueOf(jsonobject.getString("latitude")).doubleValue();
		double ulongitude = Double.valueOf(jsonobject.getString("longitude")).doubleValue();		
		lb=bls.getBooklist(city,ulatitude, ulongitude);
		return lb;
	}
	@RequestMapping(value="/book/allbook",method=RequestMethod.GET)
	@ResponseBody 
	public List<Book> getallbook(){
		return bls.getAllbook();
	}
}
