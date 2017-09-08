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
 <script type="text/javascript">  
      
	function checkQQ(){
		var aa = document.form1.orderMoney.value;
		//alert(aa);
	
  
		 if(/\D/.test(form1.orderMoney.value)){
		 	alert("订单金额只能输入数字");
		 	document.form1.orderMoney.focus();
		 	//form1.orderMoney.select();		 
			return false;
		 }
   		else if(60<aa||aa<=0){
   		alert("订单金额应该在0~60之间")
   		     return false;}
   		 else{
   		 return true	;
}
}
    </script>
</head>
<body>
<%
	int i;
	String s,x;
	s=request.getParameter("state").toString();	
	String req = new String(s);
	x=req.trim();
	//System.out.print(req);		
	String s1 = new String("已完成");
	String s2 = new String("进行中");
	if(x.equals(s1)){		
		i = 0;
	}
	else if(x.equals(s2)) {
		i = 1;
	}
	else{
		i = 2;	
	}
	//System.out.print(i);
 %>
	<article class="cl pd-20">
	<form action="./order/updateorder" method="get" 
		class="form form-horizontal" id="form-member-add" name="form1" onSubmit="return checkQQ()">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>订单编号:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="hidden" class="input-text" autocomplete="off"
					value=<%=request.getParameter("orderid") %>  name="orderid">
					<p class="input-text" autocomplete="off">
					<%=request.getParameter("orderid") %>  </p>

			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>订单起始时间:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<p class="input-text" autocomplete="off">
					<%=request.getParameter("starttime") %>  </p>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>借阅书籍:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<p class="input-text" autocomplete="off">
					<%=request.getParameter("bookname") %>  </p>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>借阅地点:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<p class="input-text" autocomplete="off">
					<%=request.getParameter("startplace") %>  </p>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>还书地点:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<p class="input-text" autocomplete="off">
					<%=request.getParameter("endplace") %>  </p>
			</div>			
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>订单终止时间:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<p class="input-text" autocomplete="off">
					<%=request.getParameter("endtime") %>  </p>
			</div>			
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>openid:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<p class="input-text" autocomplete="off">
					<%=request.getParameter("openid") %>  </p>
			</div>			
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>bookid:</label>
			<div class="formControls col-xs-8 col-sm-9">
				<p class="input-text" autocomplete="off">
					<%=request.getParameter("bookid") %>  </p>
			</div>			
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>订单状态(可更改):</label>
			    <span style="font-size:18px;">
			        

 <select id="" name="orderState">
    <option value="0">已完成</option>
    <option value="1">进行中</option>
    <option value="2">待付款</option>
</select>
      
   </span>  
   <script>  
   					 form1.orderState.value = "<%=i%>";  
				</script>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span
				class="c-red">*</span>订单金额(可更改):</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" autocomplete="off"
					value="<%=request.getParameter("money") %>" name="orderMoney">
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
