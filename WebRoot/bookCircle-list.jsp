<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib		uri="http://www.springframework.org/tags" prefix="spring"%>
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
<link rel="Bookmark" href="favicon.ico">0
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

<title>书友动态管理-动态列表</title>
<meta name="keywords"
	content="H-ui.admin v3.0,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description"
	content="H-ui.admin v3.0，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
	<!-- 此处引入外部CSS,JS文件 -->
	<style>
    	.panel{width:60%;margin:0 auto;text-align: center;}
    	.form-inline{width:60%;margin:0 auto;}
    </style>
	<script src="http://apps.bdimg.com/libs/angular.js/1.4.6/angular.min.js"></script>
	<script src="https://unpkg.com/ng-table@2.0.2/bundles/ng-table.min.js "></script>
	<link rel="stylesheet"; href="https://unpkg.com/ng-table@2.0.2/bundles/ng-table.min.css ">
	<link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="aside.jsp"></jsp:include>

	<section class="Hui-article-box"> <nav class="breadcrumb">
	<i class="Hui-iconfont">&#xe67f;</i><a href="index.jsp"> 首页</a> <span class="c-gray en">&gt;</span>
	图书圈 <span class="c-gray en">&gt;</span>动态广场<a
		class="btn btn-success radius r"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i>刷新列表 </a></nav>
		
	<div class="Hui-article" ng-app="myApp" ng-controller="editStoreItemController as vm">
		<article class="cl pd-20">

		<div class="text-c">
			日期范围： <input type="text" onchange=""
				onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}'})"
				id="datemin" ng-model="datemin" class="input-text Wdate" style="width: 120px;">
				
			<input type="text" onchange=""
				onfocus="WdatePicker({minDate:'#F{$dp.$D(\'datemin\')}',maxDate:'%y-%M-%d'})"
				id="datemax" ng-model="datemax" class="input-text Wdate" style="width: 120px;">
					
			<input type="text" class="input-text" style="width: 250px"
				placeholder="输入发布人姓名或内容" id="keyword" name="keyword" ng-model="keyword">
				
			<button class="btn btn-success radius" id="" name=""
				ng-click="search()">
				<i class="Hui-iconfont">&#xe665;</i> 搜索
			</button>

		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"><a href="javascript:;" onclick="bathDelete()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a>&nbsp &nbsp<a href="javascript:;"
				onclick="bookCircle_add('添加动态','bookCircle-add.jsp','600','670')"
				class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i>
					状态</a></span> <span class="r">
			</span>
		</div>

		<div class="mt-20">

			<table ng-table="vm.tableParams"
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="25"><input type="checkbox" name="" value=""></th>
					
						<th width="500">时间</th>
						<th width="610">内容</th>
						<th width="150">发布者</th>
						<th width="150">操作</th>
					</tr>
				</thead>
				<tbody>
					<tr class="text-c" ng-repeat="circle in $data" >
					
						<td><input type="checkbox" value="1" name=""
							onclick="clicked(this)"></td>
						<td style="display:none;">{{circle.circleid}}</td>
						<td>{{circle.circleTime}}</td>
						<td>{{circle.circleText}}</td>
						<td>{{circle.user.nickName}}</td>
					
					
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
	<jsp:include page="footer.jsp"></jsp:include>

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
	<script type="text/javascript"
		src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
	<script type="text/javascript">
		/*所有图书圈*/
		var array = new Array();
		var app = angular.module('myApp', ['ngTable']);
		var datas;		
		editStoreItemController.$inject = ["NgTableParams"];
		app.controller("editStoreItemController", editStoreItemController);		
		app.controller('editStoreItemController', function($scope, $http,NgTableParams) {
			var vm= this;
			//页面加载自动执行，查询数据
			$http({
				method : 'GET',
				url : './circle/allcircle'
			}).then(function successCallback(response) {
				$scope.circles = response.data;
				datas = $scope.circles;
				console.log(datas);
				var simpleList = datas ;				
		    	vm.tableParams = new NgTableParams({}, {
		      		dataset: simpleList
		    	});
			}, function errorCallback(response) {
			});
			$scope.search = function() {
				$http({
					method : 'GET',
					url : './circle/search',
					params : {
						openid : $scope.keyword,
						datemin : $scope.datemin,
						datemax : $scope.datemax
					}
				}).then(function successCallback(response) {
					$scope.circles = response.data;
					datas = $scope.circles;
					var simpleList = datas ;				
		    		vm.tableParams = new NgTableParams({}, {
		      			dataset: simpleList
		    		});
				}, function errorCallback(response) {
				});
			}						
		});			
		function editStoreItemController(NgTableParams) {			
		    var simpleList = datas ;
			var vm= this;			
		    vm.tableParams = new NgTableParams({}, {
		      dataset: simpleList
		    });
		 };	

		/*添加图书圈*/
		function bookCircle_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}

		/*图书圈-修改*/
		function bookCircle_change(title, url, obj, w, h) {
			var u = url + "?circleid="
					+ $(obj).parents("tr").children().eq(1).text() + "&circleTime="
					+ $(obj).parents("tr").children().eq(2).text() + "&circleText="
					+ $(obj).parents("tr").children().eq(3).text() + "&openid="
					+ $(obj).parents("tr").children().eq(4).text();
			
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