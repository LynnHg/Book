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

<title>书籍评论管理-评论列表</title>
<meta name="keywords" content="H-ui.admin v3.0,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v3.0，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">

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
	<i class="Hui-iconfont">&#xe67f;</i> <a href="index.jsp"> 首页</a> <span class="c-gray en">&gt;</span>
	评论管理 <span class="c-gray en">&gt;</span> 评论列表<a
		class="btn btn-success radius r"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i>返回列表 </a></nav>
		


		<!-- 此处对ng-controller修改 -->
	<div class="Hui-article" ng-app="myApp" ng-controller="editStoreItemController as vm">
		<article class="cl pd-20">
	
		<div class="text-c"> 
		<input type="text"  onChange="" placeholder="输入起始日期" readonly
				onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}'})" ng-model="datemin"
				name="datemin" id="datemin" class="input-text Wdate" style="width: 120px;">至
			<input type="text"  onChange="" placeholder="输入终止日期" readonly
				onfocus="WdatePicker({minDate:'#F{$dp.$D(\'datemin\')}',maxDate:'%y-%M-%d'})" ng-model="datemax"
				name="datemax" id="datemax" class="input-text Wdate" style="width: 120px;">
		
			<input type="text" class="input-text" style="width: 250px"
				placeholder="输入搜索内容" id="keyword" name="keyword" ng-model="keyword">
				
				<button class="btn btn-success radius" 
				ng-click="searchall()">
				<i class="Hui-iconfont">&#xe665;搜索</i> 
			</button>

		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l">
			<a href="javascript:;" onclick="bathDelete()" class="btn btn-danger radius">
			<i class="Hui-iconfont">&#xe6e2;</i>批量删除</a> 
			<a href="javascript:;"onclick="member_add('添加评论','comment-add.jsp','600','350')"class="btn btn-primary radius">
			<i class="Hui-iconfont">&#xe600;</i>添加评论</a></span> 
			<span class="r">共有数据：<strong>{{comments.length}}</strong>条</span>
		</div>

		<div class="mt-20">

			<table ng-table="vm.tableParams"
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c"  >
						<th width="25"><input type="checkbox" name="" value=""></th>
						<th width="25">id</th>
						<th width="50">评论时间</th>
						<th width="500">评论内容</th>
						<th width="100">评论状态</th>
						<th width="100">书籍id</th>
						<th width="100">操作</th>
					</tr>
				</thead>
				<tbody>
				<!-- for-each改为 $data -->
					<tr class="text-c" ng-repeat="comment  in $data">
						<td><input type="checkbox" value="1" name=""
							onclick="clicked(this)"></td>
						<td >{{comment.commentid}}</td>
						<td>{{comment.commentTime}}</u></td>
						<td>{{comment.commentText}}</td>
			
						<td> <div ng-app="" ng-init="points=['显示','不显示']">

                       <p><span ng-bind="points[comment.commentState]"></span></p>

                          </div></td>
						<td>{{comment.bookid}}</td>
							
						<td class="td-manage"><a style="text-decoration: none"
							class="ml-5"
							onclick="member_change('修改','comment-change.jsp',this,'600','400')"
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
		app.controller('editStoreItemController', function($scope, $http,$window,NgTableParams) {
			//页面加载自动执行，查询数据
			var vm= this;
			$http({
				method : 'GET',
				url : './comment/allcomment'
			}).then(function successCallback(response) {
				$scope.comments = response.data;
				datas = $scope.comments;
				var simpleList  = datas;
				vm.tableParams = new NgTableParams({},{
					dataset:simpleList 
				});
			}, function errorCallback(response) {
			});
			//
			$scope.searchall = function() {
				$http({
					method : 'GET',
					url : './searchall',
					params : {
					    datemin : $scope.datemin,
						datemax:$scope.datemax,
						commentText : $scope.keyword,
						commentid : $scope.keyword
					}
				}).then(function successCallback(response) {
					$scope.comments = response.data;
					datas = $scope.comments;
				var simpleList  = datas;
				vm.tableParams = new NgTableParams({},{
					dataset:simpleList 
				});
				}, function errorCallback(response) {
				});
			}
			//
		});
		
		function editStoreItemController(NgTableParames){
	var simpleList = datas;
	var vm=this;
	vm.tableParams = new NgTableParams({},{
		dataset:simpleLisr
	});
};
		


		/*用户-添加*/
		function member_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}

		/*用户-修改*/
		function member_change(title, url, obj, w, h) {
			var u = url 
			+ "?commentid="+ $(obj).parents("tr").children().eq(1).text() 
			+ "&commentTime="+ $(obj).parents("tr").children().eq(2).text() 
			+ "&commentText="+ $(obj).parents("tr").children().eq(3).text() 
			+ "&commentState="+ $(obj).parents("tr").children().eq(4).text()
			+ "&bookid="+ $(obj).parents("tr").children().eq(5).text();
			layer_show(title, u, w, h);

		}
		//批量删除
		function bathDelete() {
			//array转成字符串 作为参数
			var stringarray = array.toString();
			var i = 0;
			layer.confirm('确认要删除吗？', function(index) {
				$.get("./comment/bathDelete", {
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
				$.get("./comment/delete", {
					commentid : $(obj).parents("tr").children().eq(1).text()
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

