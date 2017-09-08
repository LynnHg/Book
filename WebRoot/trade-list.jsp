<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
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
<title>交易记录-交易列表</title>
	<script src="http://apps.bdimg.com/libs/angular.js/1.4.6/angular.min.js"></script>
	<script src="https://unpkg.com/ng-table@2.0.2/bundles/ng-table.min.js "></script>
	<link rel="stylesheet"; href="https://unpkg.com/ng-table@2.0.2/bundles/ng-table.min.css ">
	<link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="aside.jsp"></jsp:include>
	<section class="Hui-article-box"> <nav class="breadcrumb">
	<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
	交易记录<span class="c-gray en">&gt;</span> 交易列表<a
		class="btn btn-success radius r"
		style="line-height:1.6em;margin-top:3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i>刷新列表
	</a></nav>
	<div class="Hui-article" ng-app="myApp" ng-controller="editStoreItemController as vm">
		<article class="cl pd-20">

		<div class="text-c">
			交易号： <input type="text" class="input-text" style="width:250px"
				placeholder="请输入tradeid" id="keyword" name="keyword" ng-model="keyword">
			<button class="btn btn-success radius" ng-click="search()">
				<i class="Hui-iconfont">&#xe665;</i> 搜索
			</button>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20"><span class="l">
			<a href="javascript:;" onclick="bathDelete()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a> 
		 	<a href="javascript:;"
				onclick="trade_add('添加记录','trade-add.jsp','','510')"
				class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i>
				添加记录</a> </span> <span class="r">共有数据：<strong>{{trades.length}}</strong>
				条
			</span>
		</div>
		
		<div class="mt-20">
					<table ng-table="vm.tableParams" 
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="25"><input type="checkbox" name="" value=""></th>
						<th width="80">tradeid</th>
						<th width="80">交易时间</th>
						<th width="80">交易方式</th>
						<th width="80">交易金额</th>
						<th width="80">openid</th>
						<th width="80">orderid</th>
						<th width="80">退款标记</th>
						<th width="80">操作</th>
					</tr>
				</thead>
				<tbody>
					<tr class="text-c" ng-repeat="trade in $data">						
						<td><input type="checkbox" value="1" name="" onclick="clicked(this)"></td>
						<td>{{trade.tradeid}}</td>
						<td>{{trade.tradeTime}}</td>
						<td> <div ng-app="" ng-init="points1=['押金充值','余额充值','退押金','从钱包消费','从微信消费']">
                       <p><span class="label label-primary radius" ng-bind="points1[trade.tradeWay]"></span></p>
                          </div>  </td>	
						<td>{{trade.tradeMoney}}</td>											
						<td>{{trade.openid}}</td>
						<td>{{trade.orderid}}</td>
						<td> <div ng-app="" ng-init="points=['未退款','已退款','无']">
                       		<p><span class="label label-secondary radius" ng-bind="points[trade.tradeFlag]"></span></p>
                         	 </div>  </td>						
						<td class="td-manage"><a style="text-decoration: none"
							class="ml-5"
							onclick="trade_change('修改记录','trade-change.jsp',this,'600','470')"
							href="javascript:;" title="修改"><i class="Hui-iconfont">&#xe60c;</i>
							</a> <a title="删除" href="javascript:;" onclick="trade_del(this)"
							class="ml-5" style="text-decoration:none"><i
								class="Hui-iconfont">&#xe6e2;</i></a>
						</td>
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
		var array = new Array();
		var app = angular.module('myApp', ['ngTable']);
		var datas;		
		editStoreItemController.$inject = ["NgTableParams"];
		app.controller("editStoreItemController", editStoreItemController);		
		app.controller('editStoreItemController', function($scope, $http,NgTableParams) {
			var vm= this;
			$http({
				method : 'GET',
				url : './trade/alltrade'
			}).then(function successCallback(response) {
				$scope.trades = response.data;
				datas = $scope.trades;
				var simpleList = datas ;				
		    	vm.tableParams = new NgTableParams({}, {
		      		dataset: simpleList
		    	});
			}, function errorCallback(response) {
				// 请求失败执行代码
				aert("失败！")
			});

			$scope.search = function() {
				$http({
					method : 'GET',
					url : './searchbytradeid',
					params : {
						tradeid : $scope.keyword
					}
				}).then(function successCallback(response) {
					$scope.trades = response.data;
						datas = $scope.trades;
					var simpleList = datas ;				
		    		vm.tableParams = new NgTableParams({}, {
		      			dataset: simpleList
		    		});
				}, function errorCallback(response) {
					// 请求失败执行代码
					aert("失败！")
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
		function trade_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}
		function trade_change(title, url, obj, w, h) {
				var u = url+"?tradeid="
					+ $(obj).parents("tr").children().eq(1).text() + "&tradeTime="
					+ $(obj).parents("tr").children().eq(2).text() + "&tradeWay="
					+ $(obj).parents("tr").children().eq(3).text() + "&tradeMoney="
					+ $(obj).parents("tr").children().eq(4).text() + "&openid="
					+ $(obj).parents("tr").children().eq(5).text() + "&orderid="
					+ $(obj).parents("tr").children().eq(6).text() + "&tradeFlag="					
					+ $(obj).parents("tr").children().eq(7).text();
				layer_show(title, u, w, h);
				
		}

		//checkbox 被选中的那行的opend存进arrary
		function clicked(obj) {
			array.push($(obj).parents("tr").children().eq(1).text());
		}
		//批量删除
		function bathDelete() {
			//array转成字符串 作为参数
			var stringarray = array.toString();
			layer.confirm('确认要删除吗？', function(index) {
				$.get("./trade/bathDelete", {
					checked : stringarray
				});
				window.parent.location.reload();
			});
		}

		function trade_del(obj) {
			layer.confirm('确认要删除吗？', function(index) {
				$.get("./trade/delete", {
					tradeid : $(obj).parents("tr").children().eq(1).text()
				});
				$(obj).parents("tr").remove();
				layer.msg('已删除!', {
					icon : 1,
					time : 1000
				});
			});
		}
	</script>
	<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>