﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<title>订单管理-订单列表</title>
<meta name="keywords"
	content="H-ui.admin v3.0,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description"
	content="H-ui.admin v3.0，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
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
	<i class="Hui-iconfont">&#xe67f;</i> <a href="index.jsp"> 首页</a> <span class="c-gray en">&gt;</span>
	用户中心 <span class="c-gray en">&gt;</span> 订单列表<a
		class="btn btn-success radius r"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i>刷新列表 </a></nav>
	<div class="Hui-article" ng-app="myApp" ng-controller="editStoreItemController as vm">
		<article class="cl pd-20">
		<div class="text-c">
			<input type="text" class="input-text" style="width: 250px"
				placeholder="输入订单编号或openid" id="keyword" name="keyword" ng-model="keyword">
			<select  class="btn btn-success radius" id="" name="orderState">
    	<option ng-click="cxdd()">通过订单编号查订单</option>
   		 <option ng-click="cxdd1()">通过openid查订单</option>
	</select>
			<button class="btn btn-success radius" id="" name=""
				ng-click="search0()">
				<i class="Hui-iconfont">&#xe665;</i> 查已完成订单
			</button>
			<button class="btn btn-success radius" id="" name=""
				ng-click="search1()">
				<i class="Hui-iconfont">&#xe665;</i> 查进行中订单
			</button>
			<button class="btn btn-success radius" id="" name=""
				ng-click="search2()">
				<i class="Hui-iconfont">&#xe665;</i> 查待付款订单
			</button>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"><a href="javascript:;" onclick="bathDelete()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a></span> <span class="r">共有数据：<strong>{{orders.length}}</strong>
				条
			</span>
		</div>
		<div class="mt-20">
			<table ng-table="vm.tableParams" 
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="25"><input type="checkbox" name="" value=""></th>
						<th width="50">订单编号</th>
						<th width="50">订单状态</th>
						<th width="40">订单起始时间</th>
						<th width="50">借阅书籍</th>
						<th width="50">借阅地点{{qq}}</th>
						<th width="50">还书地点</th>
						<th width="80">订单终止时间</th>
						<th width="50">订单金额</th>
						<th width="60">openid</th>
						<th width="50">bookid</th>
						<th width="30">操作</th>
					</tr>
				</thead>
				<tbody>
					<tr class="text-c" ng-repeat="order in $data">
						<td><input type="checkbox" value="1" name=""
							onclick="clicked(this)"></td>
						<td>{{order.orderid}}</td>
						<td> <div ng-app="" ng-init="points=['已完成','待付款','进行中']">
                       		<p><span class="label label-success radius" ng-bind="points[order.orderState]"></span></p>
                          	</div>  </td>		
						<!-- <td> <div ng-app="" ng-init="points=['已完成','进行中','待付款']">

                       <span ng-bind="points[order.orderState]"></span>

                          </div>  </td> -->
											
						<td>{{order.startTime}}</td>
						<td>{{order.bookName}}</td>
						<td>{{order.bookStartPlace}}</td>
						<td>{{order.bookEndPlace}}</td>
						<td>{{order.endTime}}</td>
						<td>{{order.orderMoney}}</td>
						<td>{{order.openid}}</td>
						<td class="td-status"><span
							class="label label-success radius">{{order.bookid}}</span></td>
						<td class="td-manage"><a style="text-decoration: none"
							class="ml-5"
							onclick="member_change('修改','order-change.jsp',this,'600','670')"
							href="javascript:;" title="修改"><i class="Hui-iconfont">&#xe63f;</i></a>&nbsp
							&nbsp &nbsp<a title="删除" href="javascript:;"
							onclick="member_del(this)" class="ml-5"
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
		/*用户-查询*/
		var array = new Array();
		var app = angular.module('myApp', ['ngTable']);
		var datas;		
		editStoreItemController.$inject = ["NgTableParams"];
		app.controller("editStoreItemController", editStoreItemController);		
		app.controller('editStoreItemController', function($scope, $http,NgTableParams){
			var vm= this;
			//$scope.qq="yyy";
			//页面加载自动执行，查询数据
			$http({
				method : 'GET',
				url : './order/allorder'
			}).then(function successCallback(response) {
				$scope.orders = response.data;
				datas = $scope.orders;
				var simpleList = datas ;	
		    	vm.tableParams = new NgTableParams({}, {
		      		dataset: simpleList
		    	});
		    	//alert(vm.tableParams);		    	
			}, function errorCallback(response) {
			});
			$scope.cxdd = function() {
				$http({
					method : 'GET',
					url : './order/getorderbyorderid',
					params : {
						orderid : $scope.keyword
					}
				}).then(function successCallback(response) {
					$scope.orders = response.data;
				datas = $scope.orders;
				var simpleList = datas ;				
		    	vm.tableParams = new NgTableParams({}, {
		      		dataset: simpleList
		    	});
				}, function errorCallback(response) {
				});
			};
			$scope.cxdd1 = function() {
				$http({
					method : 'GET',
					url : './order/getorderbyopenid',
					params : {
						openid : $scope.keyword
					}
				}).then(function successCallback(response) {
					$scope.orders = response.data;
				datas = $scope.orders;
				var simpleList = datas ;				
		    	vm.tableParams = new NgTableParams({}, {
		      		dataset: simpleList
		    	});
				}, function errorCallback(response) {
				});
			};
			$scope.search0 = function() {
				$http({
					method : 'GET',
					url : './order/getorderbystate?orderState=0'					
				}).then(function successCallback(response) {
				//$scope.qq="yyy";
					$scope.orders = response.data;
					datas = $scope.orders;
				var simpleList = datas ;				
		    	vm.tableParams = new NgTableParams({}, {
		      		dataset: simpleList
		    	});
				}, function errorCallback(response) {
				});
			};
			$scope.search1 = function() {
				$http({
					method : 'GET',
					url : './order/getorderbystate?orderState=1'					
				}).then(function successCallback(response) {
				//$scope.qq="yyy";
					$scope.orders = response.data;
					datas = $scope.orders;
				var simpleList = datas ;				
		    	vm.tableParams = new NgTableParams({}, {
		      		dataset: simpleList
		    	});
					
				}, function errorCallback(response) {
				});
			};
			$scope.search2 = function() {
				$http({
					method : 'GET',
					url : './order/getorderbystate?orderState=2'					
				}).then(function successCallback(response) {
				//$scope.qq="yyy";
					$scope.orders = response.data;
					datas = $scope.orders;
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

		/*用户-添加*/
		function member_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}

		/*用户-修改*/
		function member_change(title, url, obj, w, h) {
			var u = url + "?orderid="
					+ $(obj).parents("tr").children().eq(1).text() + "&state="
					+ $(obj).parents("tr").children().eq(2).text() + "&starttime="
					+ $(obj).parents("tr").children().eq(3).text() + "&bookname="
					+ $(obj).parents("tr").children().eq(4).text() + "&startplace="
					+ $(obj).parents("tr").children().eq(5).text() + "&endplace="
					+ $(obj).parents("tr").children().eq(6).text() + "&endtime="
					+ $(obj).parents("tr").children().eq(7).text() + "&money="
					+ $(obj).parents("tr").children().eq(8).text() + "&openid="
					+ $(obj).parents("tr").children().eq(9).text() + "&bookid="
					+ $(obj).parents("tr").children().eq(10).text();
			layer_show(title, u, w, h);

		}
		//批量删除
		function bathDelete() {
			//array转成字符串 作为参数
			var stringarray = array.toString();
			var i = 0;
			layer.confirm('确认要删除吗？', function(index) {
				$.get("./user/bathDelete", {
					checked : stringarray
				});
				window.parent.location.reload();
			});
		}

		//checkbox 被选中的那行的opend存进arrary
		function clicked(obj) {
			array.push($(obj).parents("tr").children().eq(1).text());
		}

		/*用户-删除*/
		function member_del(obj) {
			layer.confirm('确认要删除吗？', function(index) {
				$.get("./order/deleteorder", {
					orderid : $(obj).parents("tr").children().eq(1).text()
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