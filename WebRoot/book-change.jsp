<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

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

<title>添加用户 - H-ui.admin v3.0</title>
<meta name="keywords"
	content="H-ui.admin v3.0,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description"
	content="H-ui.admin v3.0，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>

<%
	int i;
	String s,x;
	s=request.getParameter("bookState").toString();	
	String req = new String(s);
	x=req.trim();
	//System.out.print(req);	由于前页面传递的是占位符，用trim方法没有办法去掉，打印出来就是有那么多的占位符
	String s1 = new String("在编");
	String s2 = new String("在馆");
	if(x.equals(s1)){		
		i = 0;
	}
	else if(x.equals(s2)){
		i = 1;
	}
	else{
		i = 2;
	}	
 %>

	<article class="cl pd-20">
	<form action="./book/change" method="get"
		class="form form-horizontal" id="form-book-add" name="form" onSubmit="return checkye();">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">书籍id:(不可改)</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="hidden" class="input-text" autocomplete="off"
					value="<%=request.getParameter("bookid") %>"  name="bookid">
					<p  class="input-text" autocomplete="off"><%=request.getParameter("bookid") %></p>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>书名:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" autocomplete="off"
					value="<%=request.getParameter("bookname") %>"  name="bookname">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red"></span>被借总次数:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" autocomplete="off"
					value="<%=request.getParameter("bookcount") %>"  name="bookcount">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red"></span>数量:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" autocomplete="off"
					value="<%=request.getParameter("amount") %>"  name="amount">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>书籍提供者电话:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" autocomplete="off"
					value="<%=request.getParameter("bookManPhone") %>"  name="bookManPhone">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red"></span>书籍状态:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<select id="code" name="plugin" >
						<option value="1">- - -在馆- - -</option>
						<option value="2">已借</option>
						<option value="0">在编</option>
				</select>												
				<script>  
   					 form.plugin.value = "<%=i%>";  
				</script>
			</div>	
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red"></span>价格:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" autocomplete="off"
					value="<%=request.getParameter("bookMoney") %>"  name="bookMoney">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red"></span>网店id:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" autocomplete="off"
					value="<%=request.getParameter("storeid") %>"  name="storeid">
			</div>
		</div>		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red"></span>书籍分类:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" autocomplete="off"
					value="<%=request.getParameter("tags0") %>"  name="tags0">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red"></span>书籍图片:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" autocomplete="off"
					value="<%=request.getParameter("bookimgurl") %>"  name="bookimgurl">
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

	
		<script type="text/javascript">
	function checkye(){
	  var phone = document.forms.form.bookManPhone.value;
	   	 if(!(/^1[34578]\d{9}$/.test(phone))){ 
	        alert("手机号码有误，请重填"); 
	        document.forms.form.bookManPhone.focus(); 
	        return false; 
	  	 } 
	  	 
	  	 var money=document.forms.form.bookMoney.value;
	  	if(parseFloat(money)<=0){ 
	        alert("价格不能小于零，请重填"); 
	        document.forms.form.bookMoney.focus(); 
	        return false; 
	  	 } 
	}
</script>
	
</body>
</html>