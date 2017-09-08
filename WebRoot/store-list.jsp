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
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<title>网点管理-网点列表</title>
	<script src="http://apps.bdimg.com/libs/angular.js/1.4.6/angular.min.js"></script>
	<script src="https://unpkg.com/ng-table@2.0.2/bundles/ng-table.min.js "></script>
	<link rel="stylesheet"; href="https://unpkg.com/ng-table@2.0.2/bundles/ng-table.min.css ">
	<link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="aside.jsp"></jsp:include>
	<section class="Hui-article-box">
		<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i><a href="index.jsp"> 首页</a>
		<span class="c-gray en">&gt;</span>网点管理
		<span class="c-gray en">&gt;</span>网点列表
		<a class="btn btn-success radius r" style="line-height: 1.6em; margin-top: 3px" href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i>刷新列表</a>
		</nav>
		<div class="Hui-article" ng-app="myApp" ng-controller="editStoreItemController as vm"> 
			<article class="cl pd-20">
			<div class="text-c">
			网点名称： 
			<input type="text" class="input-text" style="width: 250px"
				placeholder="输入网点名" id="keyword" name="keyword" ng-model="keyword">
			<button class="btn btn-success radius" id="" name="" ng-click="search()">
				<i class="Hui-iconfont">&#xe665;</i> 搜网点
			</button>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l">
				<a href="javascript:;" onclick="bathDelete()" class="btn btn-danger radius">
					<i class="Hui-iconfont">&#xe6e2;</i>
						批量删除
				</a>
				<a href="javascript:;" onclick="store_add('添加网点','store-add.jsp','600','670')" class="btn btn-primary radius">
					<i class="Hui-iconfont">&#xe600;</i>添加网点
				</a>
				<a href="javascript:;" onclick="store_hot('销量排行','store-hot.jsp','1400','650')" class="btn btn-warning radius">
					<i class="Hui-iconfont">&#xe725;</i>网点销量
				</a>
			</span>
			<span class="r">共有数据：<strong>{{stores.length}}</strong>
				条
			</span>
		</div>
		<div class="mt-20">
			<table ng-table="vm.tableParams" 
				class="table table-border table-bordered table-hover table-bg table-sort"  >
				<thead>
					<tr class="text-c">
						<th width="40"><input type="checkbox" name="" value=""></th>
						<th width="100">网点ID</th>
						<th width="150">网点区域</th>
						<th width="150">网点名称</th>
						<th width="100">经度</th>
						<th width="100">纬度</th>
						<th width="150">所在城市</th>
						<th width="100">操作</th>
					</tr>
				</thead>
		 	<tbody>
					<tr class="text-c" ng-repeat="store in $data">
						<td><input type="checkbox" value="1" name=""
							onclick="clicked(this)"></td>
						<td>{{store.storeid}}</td>
						<td>{{store.storePlace}}</td>
						<td>{{store.storeName}}</td>
						<td>{{store.latitude}}</td>
						<td>{{store.longitude}}</td>
						<td>{{store.city}}</td>
						<td class="td-manage"><a style="text-decoration: none" class="ml-5" onclick="store_change('网点修改','store-change.jsp',this,'600','670')"
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
	<jsp:include page="footer.jsp"></jsp:include>
	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
	<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
	<script type="text/javascript">
		/*网点-查询*/
		var array = new Array();
		var app = angular.module('myApp', ['ngTable']);
		var datas;
		editStoreItemController.$inject = ["NgTableParams"];
		app.controller("editStoreItemController", editStoreItemController);
		app.controller("editStoreItemController", function($scope, $http,NgTableParams) {
			//页面加载自动执行，查询数据
			var vm= this;
			$http({
				method : 'GET',
				url : './store/allstore'
			}).then(function successCallback(response) {
				$scope.all = response.data;

				$scope.stores = response.data;
				datas = $scope.stores;
				var simpleList = datas ;
				vm.tableParams = new NgTableParams({}, {
		      		dataset: simpleList
		    	});
			}, function errorCallback(response) {
			});
			$scope.search = function() {
				$http({
					method : 'GET',
					url : './store/search',
					params : {
						storeName : $scope.keyword
					}
				}).then(function successCallback(response) {
					$scope.stores = response.data;
					datas = $scope.stores;
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
		
		/*网点-添加*/
		function store_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}
		/*网点-修改*/
		function store_change(title, url, obj, w, h) {
			var u = url + "?storeid="
					+ $(obj).parents("tr").children().eq(1).text() + "&storePlace="
					+ $(obj).parents("tr").children().eq(2).text() + "&storeName="
					+ $(obj).parents("tr").children().eq(3).text() + "&latitude="
					+ $(obj).parents("tr").children().eq(4).text()
					+ "&longitude="
					+ $(obj).parents("tr").children().eq(5).text()
					+ "&city="
					+ $(obj).parents("tr").children().eq(6).text();
			layer_show(title, u, w, h);

		}
		/*网点-批量删除*/
				var array = new Array();
				function clicked(obj) {
			array.push($(obj).parents("tr").children().eq(1).text());
		}
				function bathDelete() {
			//array转成字符串 作为参数
			var stringarray = array.toString();
			var i = 0;
			layer.confirm('确认要删除吗？', function(index) {
				$.get("./store/bathDelete", {
					checked : stringarray
				});
				window.parent.location.reload();
				
			});
			
		}
	
		/*网点-删除*/
		function store_del(obj) {
			layer.confirm('确认要删除吗？', function(index) {
				$.get("./store/delete", {
					storeid : $(obj).parents("tr").children().eq(1).text()
				});
				//window.parent.location.reload();
				$(obj).parents("tr").remove();
				layer.msg('已删除!', {
					icon : 1,
					time : 1000
				});
			});
		}
		//热门网点
		function store_hot(title, url, w, h){
			layer_show(title, url, w, h);
		}
	</script>
</body>
</html>