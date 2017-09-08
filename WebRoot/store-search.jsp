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

<title>book v3.0</title>
<meta name="keywords"
	content="H-ui.admin v3.0,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description"
	content="H-ui.admin v3.0，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
	<!--_header 作为公共模版分离出去-->
	<header class="navbar-wrapper">
	<div class="navbar navbar-fixed-top">
		<div class="container-fluid cl">
			<a class="logo navbar-logo f-l mr-10 hidden-xs"
				href="/aboutHui.shtml">book</a> <a
				class="logo navbar-logo-m f-l mr-10 visible-xs"
				href="/aboutHui.shtml">H-ui</a> <span
				class="logo navbar-slogan f-l mr-10 hidden-xs">v3.0</span> <a
				aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs"
				href="javascript:;">&#xe667;</a>
			<nav class="nav navbar-nav">
			<ul class="cl">
				<li class="dropDown dropDown_hover"><a href="javascript:;"
					class="dropDown_A"><i class="Hui-iconfont">&#xe600;</i> 新增 <i
						class="Hui-iconfont">&#xe6d5;</i></a>
					<ul class="dropDown-menu menu radius box-shadow">
						<li><a href="javascript:;"
							onclick="article_add('添加资讯','article-add.jsp')"><i
								class="Hui-iconfont">&#xe616;</i> 资讯</a></li>
						<li><a href="javascript:;"
							onclick="picture_add('添加资讯','picture-add.jsp')"><i
								class="Hui-iconfont">&#xe613;</i> 图片</a></li>
						<li><a href="javascript:;"
							onclick="product_add('添加资讯','product-add.jsp')"><i
								class="Hui-iconfont">&#xe620;</i> 产品</a></li>
						<li><a href="javascript:;"
							onclick="member_add('添加用户','member-add.jsp','','510')"><i
								class="Hui-iconfont">&#xe60d;</i> 用户</a></li>
					</ul></li>
			</ul>
			</nav>
			<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
			<ul class="cl">
				<li>超级管理员</li>
				<li class="dropDown dropDown_hover"><a href="#"
					class="dropDown_A">admin <i class="Hui-iconfont">&#xe6d5;</i></a>
					<ul class="dropDown-menu menu radius box-shadow">
						<li><a href="javascript:;" onClick="myselfinfo()">个人信息</a></li>
						<li><a href="#">切换账户</a></li>
						<li><a href="#">退出</a></li>
					</ul></li>
				<li id="Hui-msg"><a href="#" title="消息"><span
						class="badge badge-danger">1</span><i class="Hui-iconfont"
						style="font-size: 18px">&#xe68a;</i></a></li>
				<li id="Hui-skin" class="dropDown right dropDown_hover"><a
					href="javascript:;" class="dropDown_A" title="换肤"><i
						class="Hui-iconfont" style="font-size: 18px">&#xe62a;</i></a>
					<ul class="dropDown-menu menu radius box-shadow">
						<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
						<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
						<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
						<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
						<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
						<li><a href="javascript:;" data-val="orange" title="橙色">橙色</a></li>
					</ul></li>
			</ul>
			</nav>
		</div>
	</div>
	</header>
	<!--/_header 作为公共模版分离出去-->

	<!--_menu 作为公共模版分离出去-->
	<aside class="Hui-aside">

	<div class="menu_dropdown bk_2">

		<dl id="menu-store">
			<dt class="selected">
				<i class="Hui-iconfont">&#xe66a;</i> 商店管理<i
					class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd style="display: block;">
				<li class="current"><a href="store-list.jsp" title="商店列表">商店列表</a></li>
			</dd>
		</dl>

	</div>
	</aside>
	<div class="dislpayArrow hidden-xs">
		<a class="pngfix" href="javascript:void(0);"
			onClick="displaynavbar(this)"></a>
	</div>
	<!--/_menu 作为公共模版分离出去-->

	<section class="Hui-article-box"> <nav class="breadcrumb">
	<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
	商店中心 <span class="c-gray en">&gt;</span> 商店管理<a
		class="btn btn-success radius r"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i>返回列表 </a></nav>
	<div class="Hui-article" ng-app="myApp" ng-controller="myCtrl">
		<article class="cl pd-20">

		<div class="text-c">
			商店名称： 
		
			<input type="text" class="input-text" style="width: 250px"
				placeholder="输入商店名" id="keyword" name="keyword" ng-model="keyword">
			<button class="btn btn-success radius" id="" name=""
				ng-click="search()">
				<i class="Hui-iconfont">&#xe665;</i> 搜商店
			</button>

		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"><a href="javascript:;" onclick="bathDelete()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a> <a href="javascript:;"
				onclick="store_add('添加商店','store-add.jsp','600','670')"
				class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i>
					添加商店</a></span> <span class="r">共有数据：<strong>{{stores.length}}</strong>
				条
			</span>
		</div>

		<div class="mt-20">

			<table
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
				
						<th width="100">商店ID</th>
						<th width="100">商店区域</th>
						<th width="150">商店名称</th>
						<th width="100">经度</th>
						<th width="100">纬度</th>
						<th width="70">所在城市</th>
						<th width="100">操作</th>
					</tr>
				</thead>
		 	<tbody>
					<tr class="text-c" ng-repeat="store in stores">
	
						<td>{{store.storeid}}</td>
						<td>{{store.storePlace}}</td>
						<td>{{store.storeName}}</td>
						<td>{{store.latitude}}</td>
						<td>{{store.longitude}}</td>
						<td>{{store.city}}</td>
						<td class="td-manage"><a style="text-decoration: none"
							class="ml-5"
							onclick="store_change('修改','store-change.jsp',this,'600','670')"
							href="javascript:;" title="修改"><i class="Hui-iconfont">&#xe63f;</i></a>&nbsp
							&nbsp &nbsp<a title="删除" href="javascript:;"
							onclick="store_del(this)" class="ml-5"
							style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
						
					</tr>
				</tbody>    
			</table>
		</div>
		</article>
	</div>
	</section>

	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="lib/angularjs/1.6.0/angular.min.js"></script>
	<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="static/h-ui/js/H-ui.js"></script>
	<script type="text/javascript"
		src="static/h-ui.admin/js/H-ui.admin.page.js"></script>
	<!--/_footer /作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->

	<!--/请在上方写此页面业务相关的脚本-->
	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
	<script type="text/javascript"
		src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
	<script type="text/javascript">
		/*商店-查询*/
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope, $http) {
	
			//页面加载自动执行，查询数据
			$http({
				method : 'GET',
				url : './store/allstore'
			}).then(function successCallback(response) {
				$scope.stores = response.data;
			}, function errorCallback(response) {
		
			});
			
			$scope.search = function() {
				$http({
					method : 'GET',
					url : './store/search',
					params : {
						name : $scope.keyword
					}
				}).then(function successCallback(response) {
					$scope.stores = response.data;
				}, function errorCallback(response) {
				});
			}

		});
		
			/*商店-添加*/
		function store_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}
		/*商店-修改*/
		function store_change(title, url, obj, w, h) {
			var u = url + "?storeid="
					+ $(obj).parents("tr").children().eq(0).text() + "&storePlace="
					+ $(obj).parents("tr").children().eq(1).text() + "&storeName="
					+ $(obj).parents("tr").children().eq(2).text() + "&latitude="
					+ $(obj).parents("tr").children().eq(3).text()
					+ "&longitude="
					+ $(obj).parents("tr").children().eq(4).text()
					+ "&city="
					+ $(obj).parents("tr").children().eq(5).text();
			layer_show(title, u, w, h);

		}
		
			/*商店-删除*/
		function store_del(obj) {
			layer.confirm('确认要删除吗？', function(index) {
				$.get("./store/delete", {
					storeid : $(obj).parents("tr").children().eq(0).text()
				});
				//window.parent.location.reload();
				$(obj).parents("tr").remove();
				layer.msg('已删除!', {
					icon : 1,
					time : 1000
				});
				
			});

			//var tr1 = node.parentNode.parentNode;  
			//var name = tr1.cells[2].innerText
			//alert(tr1.rowIndex);  
			//alert(tr1.cells[1].innerText); //获取的方法二

		}
	</script>
</body>
</html>