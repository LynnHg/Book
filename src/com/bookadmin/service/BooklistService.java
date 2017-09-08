package com.bookadmin.service;

import java.util.ArrayList; 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookadmin.dao.BooklistDao;
import com.bookadmin.model.Lbook;
import com.bookadmin.model.Book;

@Service
public class BooklistService {
	@Autowired
	private BooklistDao bld;
	
	public List<Lbook> getBooklist(String city,double ulatitude,double ulongitude){
		List<Lbook> ls =new ArrayList<Lbook>();
		ls=bld.getBooklist(city);
		for(int i=0;i<ls.size();i++){
			double blatitude=ls.get(i).getLatitude();
			double blongitude=ls.get(i).getLongitude();
			double distance = getDistance(ulatitude,ulongitude,blatitude,blongitude);
			ls.get(i).setDistance(distance);
		}
		return  ls;
		
	}
    private static final double EARTH_RADIUS = 6378137;  
    private static double rad(double d){  
       return d * Math.PI / 180.0;  
    }  
	public static double getDistance(double lng1, double lat1, double lng2, double lat2){  
	       double radLat1 = rad(lat1);  
	       double radLat2 = rad(lat2);  
	       double a = radLat1 - radLat2;  
	       double b = rad(lng1) - rad(lng2);  
	       double s = 2 * Math.asin(  
	            Math.sqrt(  
	                Math.pow(Math.sin(a/2),2)   
	                + Math.cos(radLat1)*Math.cos(radLat2)*Math.pow(Math.sin(b/2),2)  
	            )  
	        );  
	       s = s * EARTH_RADIUS;  
	       s = Math.round(s * 10000) / 10000;  
	       return s;  
	    }  

	public List<Book> getAllbook() {
		return bld.getAllbook();
	}
}
