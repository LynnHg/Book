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
<!-- 此处引入外部CSS,JS文件 -->
<style>
.panel {
	width: 60%;
	margin: 0 auto;
	text-align: center;
}

.form-inline {
	width: 60%;
	margin: 0 auto;
}
</style>
<script src="http://apps.bdimg.com/libs/angular.js/1.4.6/angular.min.js"></script>
<script src="https://unpkg.com/ng-table@2.0.2/bundles/ng-table.min.js "></script>
<link rel="stylesheet"
	; href="https://unpkg.com/ng-table@2.0.2/bundles/ng-table.min.css ">
<link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet">
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

		<dl id="menu-member">
			<dt class="selected">
				<i class="Hui-iconfont">&#xe60d;</i> 图书圈<i
					class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd style="display: block;">
				<li class="current"><a href="bookCircle.jsp" title="动态广场">动态广场</a></li>
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
	图书圈 <span class="c-gray en">&gt;</span>动态广场<a
		class="btn btn-success radius r"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i>返回列表 </a></nav>

	<div class="Hui-article" ng-app="myApp"
		ng-controller="editStoreItemController as vm">
		<article class="cl pd-20">

		<div class="text-c">
			日期范围： <input type="text"
				onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}'})"
				id="datemin" class="input-text Wdate" style="width: 120px;">
			<input type="text"
				onfocus="WdatePicker({minDate:'#F{$dp.$D(\'datemin\')}',maxDate:'%y-%M-%d'})"
				id="datemax" class="input-text Wdate" style="width: 120px;">
			<input type="text" class="input-text" style="width: 250px"
				placeholder="输入发布人姓名" id="keyword" name="keyword" ng-model="keyword">
			<button class="btn btn-success radius" id="" name=""
				ng-click="search()">
				<i class="Hui-iconfont">&#xe665;</i> 搜发布人
			</button>

		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"><a href="javascript:;" onclick="bathDelete()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a>&nbsp &nbsp<a href="javascript:;"
				onclick="bookCircle_add('添加用户','bookCircle-add.jsp','600','670')"
				class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i>
					发布动态</a></span> <span class="r"> </span>
		</div>

		<div class="mt-20">

			<table ng-table="vm.tableParams"
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="25"><input type="checkbox" name="" value=""></th>

						<th width="100">发布时间</th>
						<th width="810">动态</th>
						<th width="150">发布人</th>
						<th width="150">操作</th>
					</tr>
				</thead>
				<tbody>
					<tr class="text-c"
						ng-repeat="circle in $data | filter:{circleState : 0}">

						<td><input type="checkbox" value="1" name=""
							onclick="clicked(this)"></td>
						<td style="display: none;">{{circle.circleid}}</td>
						<td>{{circle.circleTime}}</td>
						<td>{{circle.circleText}}</td>
						<td style="display: none;">{{circle.circleState}}</td>
						<td>{{circle.openid}}</td>


						<td class="td-manage"><a style="text-decoration: none"
							class="ml-5"
							onclick="bookCircle_change('修改','bookCircle-change.jsp',this,'600','670')"
							href="javascript:;" title="修改"><i class="Hui-iconfont">&#xe63f;</i></a>&nbsp
							&nbsp &nbsp<a title="删除" href="javascript:;"
							onclick="bookCircle_del(this)" class="ml-5"
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
	<script type="text/javascript"
		src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
	<script type="text/javascript"
		src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
	<script type="text/javascript">
		/*所有图书圈*/
		var array = new Array();
		var app = angular.module('myApp', [ 'ngTable' ]);
		var datas;
		editStoreItemController.$inject = [ "NgTableParams" ];
		app.controller("editStoreItemController", editStoreItemController);
		app.controller('editStoreItemController', function($scope, $http,
				NgTableParams) {
			var vm = this;
			//页面加载自动执行，查询数据
			$http({
				method : 'GET',
				url : './circle/allcircle'
			}).then(function successCallback(response) {
				$scope.circles = response.data;
				datas = $scope.circles;
				console.log(datas)
				var simpleList = datas;
				vm.tableParams = new NgTableParams({}, {
					dataset : simpleList
				});
			}, function errorCallback(response) {
			});
			$scope.search = function() {
				$http({
					method : 'GET',
					url : './circle/search',
					params : {
						openid : $scope.keyword
					}
				}).then(function successCallback(response) {
					$scope.circles = response.data;
					datas = $scope.circles;
					var simpleList = datas;
					vm.tableParams = new NgTableParams({}, {
						dataset : simpleList
					});
				}, function errorCallback(response) {
				});
			}
		});
		function editStoreItemController(NgTableParams) {
			var simpleList = datas;
			var vm = this;
			vm.tableParams = new NgTableParams({}, {
				dataset : simpleList
			});
		};

		/*添加图书圈*/
		function bookCircle_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}

		/*图书圈-修改*/
		function bookCircle_change(title, url, obj, w, h) {
			var u = url + "?circleid="
					+ $(obj).parents("tr").children().eq(1).text()
					+ "&circleTime="
					+ $(obj).parents("tr").children().eq(2).text()
					+ "&circleText="
					+ $(obj).parents("tr").children().eq(3).text()
					+ "&circleState="
					+ $(obj).parents("tr").children().eq(4).text() + "&openid="
					+ $(obj).parents("tr").children().eq(5).text();

			layer_show(title, u, w, h);

		}
		//批量删除
		function bathDelete() {
			//array转成字符串 作为参数
			var stringarray = array.toString();
			var i = 0;
			layer.confirm('确认要删除吗？', function(index) {
				$.get("./circle/bathDelete", {
					checked : stringarray
				});
				window.parent.location.reload();
			});
		}

		//checkbox 被选中的那行的opend存进arrary
		function clicked(obj) {
			array.push($(obj).parents("tr").children().eq(1).text());//数字看情况
		}

		/*图书圈-删除*/
		function bookCircle_del(obj) {
			layer.confirm('确认要删除吗？', function(index) {
				$.get("./circle/delete", {
					circleid : $(obj).parents("tr").children().eq(1).text()
				});
				window.parent.location.reload();
			});

			//var tr1 = node.parentNode.parentNode;  
			//var name = tr1.cells[2].innerText
			//alert(tr1.rowIndex);  
			//alert(tr1.cells[1].innerText); //获取的方法二

		}
	</script>
	<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>