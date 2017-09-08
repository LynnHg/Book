<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib	uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="favicon.ico">
<link rel="Shortcut Icon" href="favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css"
	href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script><![endif]-->
<!--/meta 作为公共模版分离出去-->

<title>添加反馈信息- H-ui.admin v3.0</title>
<meta name="keywords"
	content="H-ui.admin v3.0,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description"
	content="H-ui.admin v3.0，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
	<article class="cl pd-20">
	<form action="./feedback/change" method="get"
		class="form form-horizontal" id="form-member-add">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span></span>ID:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="hidden" class="input-text" autocomplete="off" placeholder="反馈者id:"
					value=<%=request.getParameter("feedbackid") %>  name="feedbackid">
					<p class="input-text" autocomplete="off">
					<%=request.getParameter("feedbackid") %>  </p>

			</div>
		</div>
		
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>反馈时间:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="hidden" class="input-text" autocomplete="off" placeholder="反馈时间:"
					value="<%=request.getParameter("feedbackTime") %>" name="feedbackTime">
					
					<p class="input-text" autocomplete="off">
					<%=request.getParameter("feedbackTime") %>  </p>
			</div>
		</div>
		
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">反馈内容:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="feedbackText" cols="" rows="" class="textarea"
					placeholder="说点什么...最少输入10个字符" onKeyUp="textarealength(this,100)"> <%=request.getParameter("feedbackText") %> </textarea>
				<p class="textarea-numberbar"  value="<%=request.getParameter("feedbackText") %>" name="feedbackText">>
					<em class="textarea-length">0</em>/100
				</p>
			</div>
			
		</div>
		
		<!-- <input type="text" class="input-text" autocomplete="off"
				value="1"
					name="feedbackState"> -->
					
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>反馈状态:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<select name="feedbackState" type="text" class="input-text" autocomplete="off">
				<option value="1">已处理</option>
				<option value="0">处理中</option>
				</select>
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">反馈结果:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="feedbackResult" cols="" rows="" class="textarea"
					placeholder="说点什么...最少输入10个字符" onKeyUp="textarealength(this,100)"> <%=request.getParameter("feedbackResult") %> </textarea>
				<p class="textarea-numberbar"  value="<%=request.getParameter("feedbackResult") %>" name="feedbackResult">>
					<em class="textarea-length">0</em>/100
				</p>
			</div>
			
		</div>
		
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>openID:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="hidden" class="input-text" autocomplete="off"  placeholder="用户id:"
					value="<%=request.getParameter("openid") %>"name="openid">
					<p class="input-text" autocomplete="off">
					<%=request.getParameter("openid") %>  </p>
			</div>
		</div>

		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<input class="btn btn-primary radius" type="submit"
					value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
			</div>
		</div>
	</form>
	</article>

	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="static/h-ui/js/H-ui.js"></script>
	<script type="text/javascript"
		src="static/h-ui.admin/js/H-ui.admin.page.js"></script>
	<!--/_footer /作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
	<script type="text/javascript"
		src="lib/jquery.validation/1.14.0/jquery.validate.js"></script>
	<script type="text/javascript"
		src="lib/jquery.validation/1.14.0/validate-methods.js"></script>
	<script type="text/javascript"
		src="lib/jquery.validation/1.14.0/messages_zh.js"></script>

	<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>