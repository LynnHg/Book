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

<title>修改记录</title>
<meta name="keywords"
	content="H-ui.admin v3.0,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description"
	content="H-ui.admin v3.0，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>

<%
	int i;
	String s,m;
	s=request.getParameter("tradeFlag").toString();	
	String req = new String(s);
	m=req.trim();
	//System.out.print(m);	//由于前页面传递的是占位符，用trim方法没有办法去掉，打印出来就是有那么多的占位符
	String s1 = new String("未退款");
	String s2 = new String("已退款");
	if(m.equals(s1)){		
		i = 0;
	}
	else if(m.equals(s2)){
		i = 1;
	}
	else{
		i = 2;
	}
	
		int j;
	String l,n;
	l=request.getParameter("tradeWay").toString();	
	String req1 = new String(l);
	n=req1.trim();
	//System.out.print(n);	//由于前页面传递的是占位符，用trim方法没有办法去掉，打印出来就是有那么多的占位符
	String s3 = new String("押金充值");
	String s4 = new String("余额充值");
	String s5 = new String("退押金");
	String s6 = new String("从钱包消费");
	String s7 = new String("从微信消费");
	if(n.equals(s3)){		
		j = 0;
	}
	else if(n.equals(s4)){
		j = 1;
	}
	else if(n.equals(s5)){
		j = 2;
	}
	else if(n.equals(s6)){
		j = 3;
	}
	
	else{
		j = 4;
	}	
 %>

	<article class="cl pd-20">
	<form action="./trade/change" method="get" name="fo" onSubmit="return checkye();"
		class="form form-horizontal" id="form-trade-change">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">tradeid:(不可改)</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="hidden" class="input-text" autocomplete="off"
					value="<%=request.getParameter("tradeid") %>"  name="tradeid">
					<p  class="input-text" autocomplete="off"><%=request.getParameter("tradeid") %></p>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>交易时间:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" autocomplete="off"
					value="<%=request.getParameter("tradeTime") %>"  name="tradeTime">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>交易方式:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<select id="code1" name="plugin1" >
						<option value="0">---押金充值---</option>
						<option value="1">余额充值</option>
						<option value="2">退押金</option>
						<option value="3">从钱包消费</option>
						<option value="4">从微信消费</option>
				</select>												
				<script>  
   					 fo.plugin1.value = "<%=j%>";  
				</script>
			</div>								
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>交易金额:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" autocomplete="off"
					value="<%=request.getParameter("tradeMoney") %>"  name="tradeMoney">
			</div>
		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>openid:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" autocomplete="off"
					value="<%=request.getParameter("openid") %>"  name="openid">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>orderid:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" autocomplete="off"
					value="<%=request.getParameter("orderid") %>"  name="orderid">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>退款标记:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<select id="code" name="plugin" >
						<option value="1">----已退款----</option>
						<option value="2">无</option>
						<option value="0">未退款</option>
				</select>												
				<script>  
   					 fo.plugin.value = "<%=i%>";  
				</script>
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
<script type="text/javascript">
	function checkye(){
		 var tradeway = document.forms.fo.plugin1.value;
		 var tradeflag = document.forms.fo.plugin.value;	  	
		var orderid = document.forms.fo.orderid.value;
		
	  	if((tradeway==1||tradeway==2||tradeway==3||tradeway==4)&(tradeflag==0||tradeflag==1)){ 
	        alert("交易方式为押金充值时，才有退款记录"); 
	       document.forms.fo.plugin.focus(); 
	        return false; 
	  	 } 
 
 		if((tradeway==1||tradeway==2||tradeway==0)&&(orderid!=0)){
 			alert("交易方式为钱包或者微信时，orderid才为非零"); 
	       document.forms.fo.orderid.focus(); 
	       return false;
 		}
	
	}
</script>
</body>
</html>