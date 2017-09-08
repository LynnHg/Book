<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta charset="UTF-8">
<center><title>用户登录界面</title></center>
<style type="text/css">
@charset "UTF-8";
/*css 初始化 */
html, body, ul, li, ol, dl, dd, dt, p, h1, h2, h3, h4, h5, h6, form, fieldset, legend, img {
    margin: 0;
    padding: 0;
}
body{
	background:#000;
}

fieldset, img, input, button {  			/*fieldset组合表单中的相关元素*/
    border: none;
    padding: 0;
    margin: 0;
    outline-style: none;
}

ul, ol {
    list-style: none;				/*清除列表风格*/
}

input {
    padding-top: 0;
    padding-bottom: 0;
    font-family: "SimSun", "宋体";
}

select, input {
    vertical-align: middle;
}

select, input, textarea {
    font-size: 12px;
    margin: 0;
}

textarea {
    resize: none;
}

/*防止多行文本框拖动*/
img {
    border: 0;
    vertical-align: middle;
}

/*  去掉图片低测默认的3像素空白缝隙*/
table {
    border-collapse: collapse;			/*合并外边线*/
}


body {
    font: 12px/150% "Microsoft yahei";	
    color: #666;
}

.clearfix:before, .clearfix:after {
    content: "";
    display: table
}

.clearfix:after {
    clear: both;
}

.clearfix {
    *zoom: 1; /*IE/7/6*/
}

a {
    color: #666;
    text-decoration: none;
}

a:hover {
    color: #C81623;
}

h1, h2, h3, h4, h5, h6 {
    text-decoration: none;
    font-weight: normal;
    font-size: 100%;
}

s, i, em {
    font-style: normal;
    text-decoration: none;
}

.col-red {
    color: #C81623 !important;
}

/*公共类*/
.w {
    /*版心 提取 */
    width: 1210px;
    margin: 0 auto;
}

.fl {
    float: left
}

.fr {
    float: right
}

.al {
    text-align: left
}

.ac {
    text-align: center
}

.ar {
    text-align: right
}

.hide {
    display: none
} 
body {
	background: #607D8B;
	position: relative;
}
.login {
	width: 460px;
	height: 400px;
	background: #fff;
	border-radius: 5px; 
	padding: 10px;
	margin:150px auto; 
}
.logo {
	width: 500px;
	height: 106px;
	text-align: center;
}
.lg-wrap {
	width: 400px;
	height: 400px;
	background: #a5b9df;
	margin: 0 auto;
	overflow: hidden;
	border-radius: 5px;
	padding: 0 30px;
}
.lg-wrap h1 {
    font-family: "微软雅黑";
    font-size: 20px;
    color: #000;
    padding-bottom: 10px;
    margin: 20px 0 20px 8px;
    border-bottom: 2px solid #206bb7;
}
.lg-wrap .form-item {
	width: 400px;
	height: 40px;
	margin-bottom: 20px;
	position:relative;
}
.lg-wrap label {
	display: inline-block;
	width: 100px;
	font-size: 17px;
	color: #000;
	letter-spacing: 1px;
	text-align: right;
}
.lg-wrap input {
	width: 250px;
	height: 40px;
	border: 1px solid #D4CFCF;
	padding: 0px 10px;
	font-size: 17px;
}
.lg-wrap .memory-password {
	width: 150px;
	height: 30px;
	line-height: 30px;
	margin: 0 auto;
}
.lg-wrap .memory-password label {
	color: #999;
}
.lg-wrap .memory-password input {
	width: 15px;
	height: 15px;
}
.lg-wrap .submit {
	display: block;
	width: 250px;
	margin: 10px auto;
	cursor: pointer;
	background: #206bb7;
	font-size: 18px;
	color: #fff;
}
#textfild{
	width:50px;
	height:17px;
	background-color:#87adbf;
	border:solid 1px #153966;
	font-size:12px;
	color:#283439;
}
#myDiv{
	display:inline-block;
	width:100px;
	height:25px;
	background-color: gray;
	font-family: Georgia;
	font-size:20px;
	letter-spacing: 8px;
	text-align:center;
	line-height:25px;
}
.cap{
	position:absolute;
	font-size:24px;
	left:200px;
	top:11px;
}
	</style>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<script type="text/javascript">
function changeValidateCode(obj){
	//获取当前的时间作为参数
	var timenow=new Date().getTime();
	//每次请求需要一个不同的参数，否则会返回相同的验证码，这和浏览器的缓存机制有关系
	obj.src="getRandomPicture?d="+timenow;
}
</script>
</head>
<body bgcolor="#DFFFDF">
<!-- <center><h2>Admin用户登录界面</h2></center> -->
<center>
<%
request.setCharacterEncoding("utf-8");
%>
<%
List<String> info=(List<String>)request.getAttribute("info");
if(info!=null){
    Iterator<String> iter=info.iterator();
    while(iter.hasNext()){
%>
<h4><%=iter.next()%></h4>
<% 
}
}
%>
</center>
	<%
	%>
	  <div id="login" class="login">
		<div class="lg-wrap">
			<h1>管理员用户登录</h1>
			<form action="./admin/index" method="post" onSubmit="return bunding()">
				<div class="form-item">
					<label>用户名：</label>
					<input class="user-name" type="text" name="username" placeholder="用户名" />
				</div>
				<div class="form-item">
					<label>密&nbsp;&nbsp;&nbsp;码：</label>
					<input class="user-password" type="password" name="password" placeholder="密码" />
				</div>
				<div class="form-item">  
                <label>验证码：</label><input type="text" id="captcha" placeholder="验证码" maxlength="4" onkeyup="judge()" style="width:100px"/>
                <span id="myDiv" onclick="Yzm()" ><i id="p0"></i><i id="p1"></i><i id="p2"></i><i id="p3"></i></span>  
                <span id="captchaChecked" class="cap" style="display:none;color:green;font-weight:bold">√</span>  
            	<span id="captchaChecked1" class="cap" style="display:none;color:red;font-weight:bold">x</span>  
            </div>  
           <div class="form-item memory-password">
					<label for="#">
				        <input type="checkbox" class="ck-pwd"/>
				        记住密码
				    </label>
				</div>
				<div class="form-item">				
					<input class="submit" type="submit" name="submit" value="登录" />
				</div>	
			</form>
		</div>
	</div>
	<script type="text/javascript">
	    var userName=document.querySelector('.user-name');
	    var pwd=document.querySelector('.user-password');
	    var sub=document.querySelector('.submit');
	    var ckb=document.querySelector('.ck-pwd');
	    var pp0 = document.getElementById("p0");
	    var pp1 = document.getElementById("p1");	
	    var pp2 = document.getElementById("p2");
	    var pp3 = document.getElementById("p3");
		var flag=false;
		var code;
		var p0;
		var p1;
		var p2;
		var p3;
		var colors=["#243235","#feaceb","#aaaaaa","#bbbbbb","red","pink","yellow","black","white","#faedea","#f65475"];
	    sub.onclick=function(){
	//        如果记住密码 被选中存储，用户信息
	        if(ckb.checked){
	            window.localStorage.setItem('userName',userName.value);
	            window.localStorage.setItem('pwd',pwd.value);
	        }else{
	            window.localStorage.removeItem('userName');
	            window.localStorage.removeItem('pwd');
	        }
	//        否则清除用户信息
	    }
	    window.onload=function(){
	//        当页面加载完成后，获取用户名，密码，填充表单
	        userName.value=window.localStorage.getItem('userName');
	        pwd.value=window.localStorage.getItem('pwd');
	        Yzm();
	    }
	    function Yzm(){
	    	document.getElementById("captchaChecked").style.display="none";
    		document.getElementById("captchaChecked1").style.display="none";
    		
    		flag=false;
	    	var xmlhttp;
	    	if (window.XMLHttpRequest)//判断浏览器版本，从code for IE7+, Firefox, Chrome, Opera, Safari
	    	  {
	    	  xmlhttp=new XMLHttpRequest();//获取对象，用于发起ajax请求
	    	  }
	    	else
	    	  {// code for IE6, IE5
	    	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	    	  }
	    	xmlhttp.onreadystatechange=function()
	    	  {
	    	  if (xmlhttp.readyState==4 && xmlhttp.status==200)//请求完成且响应就绪
	    	    {//请求返回的数据
	    	    	code=xmlhttp.responseText;
	    	    	p0=code.charAt(0);
	    	    	p1=code.charAt(1);
	    	    	p2=code.charAt(2);
	    	    	p3=code.charAt(3);
	    	    	console.log(p2)
	    	    	pp0.innerHTML=p0;
	    	    	pp1.innerHTML=p1;
	    	    	pp2.innerHTML=p2;
	    	    	pp3.innerHTML=p3;
	    	    }
	    	  }
	    	xmlhttp.open("GET","./Yzm",true);//开启请求，请求方式为get，地址是yzm，true表示异步
	    	xmlhttp.send();
	    	var index0=Math.floor(Math.random()*colors.length);
	    	var index1=Math.floor(Math.random()*colors.length);
	    	var index2=Math.floor(Math.random()*colors.length);
	    	var index3=Math.floor(Math.random()*colors.length);
	    	pp0.style.color= colors[index0];
			pp1.style.color= colors[index1];	
			pp2.style.color= colors[index2];
			pp3.style.color= colors[index3];
	    }
	    function judge(){
	    	var inyzm=document.getElementById("captcha").value;//输入元素
	    	var showyzm=0;//块元素
	    	if(inyzm.toLowerCase()==code.toLowerCase()){
	    		document.getElementById("captchaChecked").style.display="block";
	    		document.getElementById("captchaChecked1").style.display="none";
	    		flag=true;
	    	}
	    	else{
	    		document.getElementById("captchaChecked1").style.display="block";
	    	}
	    }
	    function bunding(){
	    	if(!flag){
	    		alert("验证码错误");
	    		return false;
	    	}
	    	else{
	    		return true;
	    	}
	    }
	</script>
</body>
</html>