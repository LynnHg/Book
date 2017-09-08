package com.bookadmin.filter;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class FeedBackFilter {
	 public static String StringFilter(String str){  
	        String regEx = "[`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）\"\"《》\\\\——+|{}【】‘；：”“’。，、？]";  
		    Pattern p = Pattern.compile(regEx);  
			Matcher m = p.matcher(str);  
			return m.replaceAll("*").trim();  
		}

}
