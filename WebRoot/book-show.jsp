<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>

<![endif]-->
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<link href="static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="static/h-ui.admin/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script><![endif]-->
<title>书籍信息</title>
</head>
<body>
	<div class="Hui-article" ng-app="myApp" ng-controller="myCtrl">
			<table
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="20">书籍id</th>
						<th width="20">书名</th>
						<th width="20">提供者姓名</th>
						<th width="20">提供者电话</th>
						<th width="20">状态</th>
						<th width="20">书籍地址</th>
						<th width="20">价格</th>
						<th width="60">网店id</th>
						<th width="60">轨迹</th>
						<th width="60">简介</th>
						<th width="60">图片</th>
						<th width="60">网店分类</th>						
					</tr>
				</thead>
				<tbody>
					<tr class="text-c" ng-repeat="book in books">						
						<td>{{book.bookid}}</td>
						<td>{{book.bookname}}</td>
						<td>{{book.bookManName}}</td>
						<td>{{book.bookManPhone}}</td>
						<td>{{book.bookState}}</td>
						<td>{{book.bookPlace}}</td>
						<td>{{book.bookMoney}}</td>
						<td>{{book.storeid}}</td>
						<td>{{book.bookRoute}}</td>
						<td>{{book.bookIntroduce}}</td>
						<td>{{book.bookimgurl}}</td>
						<td>{{book.bookclass}}</td>
					</tr>
				</tbody>
			</table>	
		</div>	
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/angularjs/1.6.0/angular.min.js"></script>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.page.js"></script>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.page.js"></script>

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
	<script type="text/javascript"
		src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
	<script type="text/javascript">
			/*根据bookid插叙书籍信息*/
		var app = angular.module('myApp', []);
			app.controller('myCtrl', function($scope, $http) {
				$http({
					method : 'GET',
					url : './searchbyid?bookid='+ <%=request.getParameter("bookid") %>
					
				}).then(function successCallback(response) {
					$scope.books = response.data;
					
				}, function errorCallback(response) {
					// 请求失败执行代码
					
				});
			});
		
			</script>
</body>
</html>