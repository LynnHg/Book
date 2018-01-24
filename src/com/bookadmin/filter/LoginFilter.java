package com.bookadmin.filter;

import javax.servlet.*; 
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.*;

public class LoginFilter implements Filter {
	// FilterConfig可用于访问Filter的配置信息
	private FilterConfig config;

	// 实现初始化方法
	public void init(FilterConfig config) {
		this.config = config;
	}

	// 实现销毁方法
	public void destroy() {
		this.config = null;
	}

	// 执行过滤的核心方法
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		System.out.println("------LoginFilter");
		req.setCharacterEncoding("GBK"); // ①
		HttpServletRequest requ = (HttpServletRequest) req;

		// 如果session存在则返回已有的session，否则如果参数为true则新建一个session
		HttpSession session = requ.getSession(true);
		// 获取客户请求的页面
		String requestPath = requ.getServletPath();
		// 如果session范围的user为null，即表明没有登录
		// 且用户请求的既不是登录页面，也不是处理登录的页面
//		if (session.getAttribute("username") == null
//				&& !requestPath.endsWith("/admin/index")
//				&& !requestPath.endsWith("/Yzm")
//				&& !requestPath.endsWith("/admin-login.jsp")) {
//			// forward到登录页面
//			req.setAttribute("tip", "您还没有登录");
//			req.getRequestDispatcher("/admin-login.jsp").forward(req, res);
//		}
		// "放行"请求
//		else {
			chain.doFilter(req, res);
//		}
	}
}