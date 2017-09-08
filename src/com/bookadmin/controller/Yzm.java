package com.bookadmin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Yzm {
	@RequestMapping(value="Yzm",method=RequestMethod.GET)
	@ResponseBody
public String modefied(){
		System.out.println("come in");
	char letter[]=new char[26];
	char letters[]=new char[26];
	int num[]={0,1,2,3,4,5,6,7,8,9};
	
	for(int i=0;i<26;i++){
		letter[i]=(char) ('a'+i);
		letters[i]=(char)('A'+i);
	}
	String s="";
	for(int i=0;i<4;i++){
		double randomnumber=Math.random();
		if(randomnumber<0.33){
			//数字
			int nums=(int)(Math.random()*10);
			s+=num[nums];
			
		}
		
		else if(randomnumber<0.67){
			int nums=(int)((Math.random()*100)%26);
			s+=letter[nums];	
		}
		else{
			int nums=(int)((Math.random()*100)%26);
			s+=letters[nums];
		}
	}
	System.out.println(s);
	return s;
}

}
