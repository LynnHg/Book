<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>LH共享图书后台管理页面</title>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="favicon.ico">
<link rel="Shortcut Icon" href="favicon.ico" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
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
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<script type="text/javascript" src="js/style.js"></script> 
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="aside.jsp"></jsp:include>
	<section class="Hui-article-box">
		<nav class="breadcrumb">
			<i class="Hui-iconfont"></i> <a href="index.jsp" class="maincolor">首页</a> <span
				class="c-999 en">&gt;</span> <span class="c-666">我的桌面</span> <a
				class="btn btn-success radius r"
				style="line-height: 1.6em; margin-top: 3px"
				href="javascript:location.replace(location.href);" title="刷新"><i
				class="Hui-iconfont">&#xe68f;</i>刷新</a>
		</nav>
		<div class="Hui-article">
			<div class="container">
			<div class="st-container">
				
				<input type="radio" name="radio-set" checked="checked" id="st-control-1"/>
				<a href="#st-panel-1">首页</a>
				<input type="radio" name="radio-set" id="st-control-2"/>
				<a href="#st-panel-2">指南step1</a>
				<input type="radio" name="radio-set" id="st-control-3"/>
				<a href="#st-panel-3">指南step2</a>
				<input type="radio" name="radio-set" id="st-control-4"/>
				<a href="#st-panel-4">指南step3</a>
				<input type="radio" name="radio-set" id="st-control-5"/>
				<a href="#st-panel-5">指南step4</a>
				
				<div class="st-scroll">
				
					<!-- Placeholder text from http://hipsteripsum.me/ -->
					
					<section class="st-panel" id="st-panel-1">
						<div class="st-deco" data-icon="H"></div>
						<h2>欢迎来到首页</h2>
						<p id="step1">用户指南</p>
						
						<!-- <p>
							<a class="htmleaf-icon icon-home" href="http://www.htmleaf.com/" title="jQuery之家" target="_blank"><span> jQuery之家</span></a> | 
							<a class="htmleaf-icon icon-arrow-right3" href="http://www.htmleaf.com/html5/html5muban/20141126596.html" title="返回下载页" target="_blank"><span> 返回下载页</span></a>
						</p> -->
						<!--<div class="htmleaf-links">
							<a class="htmleaf-icon icon-home" href="http://www.htmleaf.com/" title="jQuery之家" target="_blank"><span> jQuery之家</span></a>
							<a class="htmleaf-icon icon-arrow-right3" href="" title="返回下载页" target="_blank"><span> 返回下载页</span></a>
						</div>-->
					</section>
					
					<section class="st-panel st-color" id="st-panel-2">
						<div class="st-deco" data-icon="2"></div>
						<h2>借书相关</h2>
						<p id="step2">借书相关</p>	
					</section>
					
					<section class="st-panel" id="st-panel-3">
						<div class="st-deco" data-icon="B"></div>
						<h2>押金充值问题</h2>
						<p id="step3">押金充值问题</p>
					</section>
					
					<section class="st-panel st-color" id="st-panel-4">
						<div class="st-deco" data-icon="x"></div>
						<h2>余额充值说明</h2>
						<p id="step4">余额充值说明</p>
					</section>
					
					<section class="st-panel" id="st-panel-5">
						<div class="st-deco" data-icon="Ç"></div>
						<h2>找不到书？？？</h2>
						<p id="step5">Thank you!</p>
					</section>

				</div><!-- // st-scroll -->
				
			</div><!-- // st-container -->
			
        </div>
			<footer class="footer">
				<p>
					感谢jQuery、layer、laypage、Validform、UEditor、My97DatePicker、iconfont、Datatables、WebUploaded、icheck、highcharts、bootstrap-Switch<br>
					Copyright &copy;2015 H-ui.admin v3.0 All Rights Reserved.<br>
					本后台系统由<a href="http://www.h-ui.net/" target="_blank"
						title="H-ui前端框架">H-ui前端框架</a>提供前端技术支持
				</p>
			</footer>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript">
	$(function(){ 
		　　 $.post(
				 "guide/search1",
				 {"guideid":12},
				 function(data){
					 document.getElementById("step1").innerHTML=data;
				 }
		 	)
		 	 $.post(
				 "guide/search1",
				 {"guideid":13},
				 function(data){
					 document.getElementById("step2").innerHTML=data;
				 }
		 	)
		 	 $.post(
				 "guide/search1",
				 {"guideid":14},
				 function(data){
					 document.getElementById("step3").innerHTML=data;
				 }
		 	)
		 	 $.post(
				 "guide/search1",
				 {"guideid":15},
				 function(data){
					 document.getElementById("step4").innerHTML=data;
				 }
		 	)
		 	 $.post(
				 "guide/search1",
				 {"guideid":16},
				 function(data){
					 document.getElementById("step5").innerHTML=data;
				 }
		 	)
		}); 
	</script>
	<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>