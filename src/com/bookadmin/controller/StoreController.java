package com.bookadmin.controller;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.text.DecimalFormat;
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
import com.bookadmin.dao.StoreDao;
import com.bookadmin.model.Lbook;
import com.bookadmin.model.Store;

import net.sf.json.JSONObject;


@Controller
public class StoreController {
	
	@Autowired
	private StoreDao ud;
	
	public List<Store> getStorelist(String ulatitude,String ulongitude){
		List<Store> ls =new ArrayList<Store>();
		ls=ud.getAllstore();
		for(int i=0;i<ls.size();i++){
			String blatitude=ls.get(i).getLatitude();
			String blongitude=ls.get(i).getLongitude();
			double distance = getDistance(ulatitude,ulongitude,blatitude,blongitude);
			ls.get(i).setDistance(distance);
		}
		return  ls;
		
	}
	
	 private static final double EARTH_RADIUS = 6378.137;  
	    private static double rad(double d){  
	       return d * Math.PI / 180.0;  
	    }  
		public static double getDistance(String lng1, String lat1, String lng2, String lat2){  
		       double radLat1 = rad(Double.valueOf(lat1));  
		       double radLat2 = rad(Double.valueOf(lat2));  
		       double a = radLat1 - radLat2;  
		       double b = rad(Double.valueOf(lng1)) - rad(Double.valueOf(lng2));  
		       double s = 2 * Math.asin(  
		            Math.sqrt(  
		                Math.pow(Math.sin(a/2),2)   
		                + Math.cos(radLat1)*Math.cos(radLat2)*Math.pow(Math.sin(b/2),2)  
		            )  
		        );  
		       s = s * EARTH_RADIUS;  
		       s = s * 10000 / 10000;  
		       DecimalFormat df = new DecimalFormat("#.0");
		       
		       s= Double.valueOf(df.format(s));
		       return s;  
		    } 

	//获取数据库网点数据
	@RequestMapping(value="/store/allstore",method=RequestMethod.GET)
	@ResponseBody 
	public List<Store> allStore(HttpServletRequest req){
		return ud.getAllstore();
	}
	
	@RequestMapping(value="/store/allstorelist",method=RequestMethod.GET)
	@ResponseBody 
	public List<Store> allStoreList(HttpServletRequest req) throws Throwable{
		List<Store> lb = new ArrayList<Store>();
		String ulatitude = req.getParameter("latitude");
		String ulongitude = req.getParameter("longitude");
		System.out.println("经纬度："+ulatitude + ' ' +ulongitude );
		lb=getStorelist(ulatitude, ulongitude);
		return lb;
	}
	
	//获取网点销量排名
	@RequestMapping(value="/store/storeRank",method=RequestMethod.GET)
	@ResponseBody 
	public List<Store> getStoreRank(HttpServletRequest req){
		return ud.getStoreRank();
	}
	
	
	//添加网点
	@RequestMapping(value="/store/add",method=RequestMethod.GET)
	@ResponseBody 
	public String add(HttpServletRequest req,HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String storePlace = req.getParameter("storePlace");
		String storeName = req.getParameter("storeName");
		String latitude = req.getParameter("latitude");
		String longitude = req.getParameter("longitude");
		String city = req.getParameter("city");
		ud.add(storePlace, storeName, latitude, longitude, city);
		return "<script>window.parent.location.reload()</script>";
	}
	
	//更改网点
	@RequestMapping(value="/store/change",method=RequestMethod.GET)
	@ResponseBody 
	public String change(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		int storeid = Integer.valueOf(req.getParameter("storeid"));
		String storePlace = req.getParameter("storePlace");
		String storeName = req.getParameter("storeName");
		String latitude = req.getParameter("latitude");
		String longitude = req.getParameter("longitude");
		String city = req.getParameter("city");
		ud.change(storeid, storePlace, storeName, latitude, longitude, city);
		return "<script>window.parent.location.reload()</script>";
	}
	
	//删除网点
	@RequestMapping(value="/store/delete",method=RequestMethod.GET)
	@ResponseBody 
	public void delete(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String storeid = req.getParameter("storeid");
		System.out.print(storeid);
		ud.delete(storeid);
	}
	
	//查询网点
	@RequestMapping(value="/store/search",method=RequestMethod.GET)
	@ResponseBody 
	public List<Store> search(HttpServletRequest req) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String storeName = req.getParameter("storeName");
		List<Store> lu = new ArrayList<Store>();
		lu = ud.getStore(storeName);
		
		return  lu;
	}
	
	//批量删除网点
	@RequestMapping(value="/store/bathDelete",method=RequestMethod.GET)
	@ResponseBody 
	public void bathDelete(HttpServletRequest req, HttpServletResponse res) throws Throwable{
		req.setCharacterEncoding("UTF-8");
		String checked = req.getParameter("checked");
		//分割成数组取出ostoreid
		
		String[] storeidArray = checked.split(",");
		for(int i=0;i<storeidArray.length;i++){
			ud.delete(storeidArray[i]);
		}
	}

}
	
