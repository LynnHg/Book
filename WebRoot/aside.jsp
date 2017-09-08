<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	body dl dt a {
		color: #000;
		display: block;
		text-align: left;
	}
	dl dt a:hover {
		background-color: gray;
		text-decoration: none;
		color: #fff;
	}
</style>
</head>
<body>
<aside class="Hui-aside">
		<div class="menu_dropdown bk_2">
			<dl id="menu-article">
				<dt>
					<i class="Hui-iconfont"></i><a href="book-list.jsp"
						title="用户管理">书籍管理</a><i
						class="Hui-iconfont menu_dropdown-arrow"></i>
				</dt>
			</dl>
			<dl id="menu-product">
				<dt>
					<i class="Hui-iconfont"></i> <a href="order-list.jsp"
						title="订单管理">订单管理</a><i
						class="Hui-iconfont menu_dropdown-arrow"></i>
				</dt>
			</dl>
			<dl id="menu-trade">
				<dt>
					<i class="Hui-iconfont"></i> <a href="trade-list.jsp"
						title="交易记录">交易记录</a><i
						class="Hui-iconfont menu_dropdown-arrow"></i>
				</dt>
			</dl>
			<dl id="menu-comments">
				<dt>
					<i class="Hui-iconfont"></i><a href="store-list.jsp"
						title="网点管理">网点管理</a><i
						class="Hui-iconfont menu_dropdown-arrow"></i>
				</dt>
			</dl>
			<dl id="menu-member">
				<dt>
					<i class="Hui-iconfont"></i> <a href="member-list.jsp"
						title="用户管理">用户管理</a><i class="Hui-iconfont menu_dropdown-arrow"></i>
				</dt>

			</dl>
			<dl id="menu-admin">
				<dt>
					<i class="Hui-iconfont"></i> <a href="admin-list.jsp"
						title="管理者管理">管理者管理</a><i
						class="Hui-iconfont menu_dropdown-arrow"></i>
				</dt>
			</dl>
			<!-- 
			<dl id="menu-admin">
				<dt>
					<i class="Hui-iconfont"></i> <a href="bookclub-list.jsp"
						title="活动管理">活动管理</a><i
						class="Hui-iconfont menu_dropdown-arrow"></i>
				</dt>
			</dl>
			 -->
			
			<dl id="menu-admin">
				<dt>
					<i class="Hui-iconfont"></i> <a href="bookCircle-list.jsp"
						title="书友动态管理">书友动态管理</a><i
						class="Hui-iconfont menu_dropdown-arrow"></i>
				</dt>
			</dl>
			<dl id="menu-admin">
				<dt>
					<i class="Hui-iconfont"></i> <a href="comment-list.jsp"
						title="书籍评论管理">书籍评论管理</a><i
						class="Hui-iconfont menu_dropdown-arrow"></i>
				</dt>
			
			</dl>
			<dl id="menu-admin">
				<dt>
					<i class="Hui-iconfont"></i> <a href="guide-list.jsp"
						title="指南管理">指南管理</a><i
						class="Hui-iconfont menu_dropdown-arrow"></i>
				</dt>
			</dl>
			<dl id="menu-admin">
				<dt>
					<i class="Hui-iconfont"></i> <a href="feedback-list.jsp"
						title="反馈意见管理">反馈意见管理</a><i
						class="Hui-iconfont menu_dropdown-arrow"></i>
				</dt>
			</dl>
		</div>
	</aside>
	<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
</body>
</html>