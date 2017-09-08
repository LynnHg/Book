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
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="favicon.ico">
<link rel="Shortcut Icon" href="favicon.ico" />
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
<title>书籍列表-书籍管理</title>
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
	书籍管理中心 <span class="c-gray en">&gt;</span> 书籍列表<a
		class="btn btn-success radius r"
		style="line-height:1.6em;margin-top:3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i>刷新列表 
	</a></nav>
	<div class="Hui-article" ng-app="myApp" ng-controller="editStoreItemController as vm">
		<article class="cl pd-20">

		<div class="text-c">
			书名： <input type="text" class="input-text" style="width:250px"
				placeholder="请输入书名" id="keyword" name="keyword" ng-model="keyword">
			<button class="btn btn-success radius" ng-click="search()">
				<i class="Hui-iconfont">&#xe665;</i> 搜索
			</button>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20"><span class="l">
			<a href="javascript:;" onclick="bathDelete()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a> 
				<a href="javascript:;"
				onclick="book_add('添加书籍','book-add.jsp','','510')"
				class="btn btn-primary radius">
				<i class="Hui-iconfont">&#xe600;</i>
				添加书籍</a>
				</span> <span class="r">共有数据：<strong>{{books.length}}</strong>
				条
			</span>
		</div>
		
		<div class="mt-20">
			<table ng-table="vm.tableParams" style="table-layout:fixed;" 
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="25"><input type="checkbox" name="" value=""></th>
						<th width="40">书籍id</th>
						<th width="60">书名</th>
						<th width="40">数量</th>
						<th width="60">被借次数</th>
						<th width="60">书籍提供者电话</th>
						<th width="60">书籍状态</th>
						<th width="60">价格</th>
						<th width="60">网店id</th>
						<th width="60">书籍分类</th>
						<th width="60">书籍图片</th>
						<th width="40">操作</th>
					</tr>
				</thead>
				<tbody>
					<tr class="text-c" ng-repeat="book in $data">						
						<td><input type="checkbox" value="1" name="" onclick="clicked(this)"></td>
						<td>{{book.bookid}}</td>
						<td>{{book.bookname}}</td>
						<td>{{book.amount}}</td>
						<td>{{book.bookcount}}</td>
						<td>{{book.bookManPhone}}</td>
						<td> <div ng-app="" ng-init="points=['在编','在馆','已借']">
                       		<p><span class="label label-success radius" ng-bind="points[book.bookState]"></span></p>
                          	</div>
                        </td>		
						<td>{{book.bookMoney}}</td>
						<td>{{book.storeid}}</td>
						<td>{{book.tags0}}</td>
						<td><img src="{{book.bookimgurl}}" width="70" height="100"></td>
						<td class="td-manage">
							<a style="text-decoration: none" class="ml-5" onclick="book_change('修改','book-change.jsp',this,'600','470')"
							href="" title="修改"><i class="Hui-iconfont">&#xe60c;</i>
							</a> 
						<a title="删除" href="javascript:;" onclick="book_del(this)"
							class="ml-5" style="text-decoration:none"><i
								class="Hui-iconfont">&#xe6e2;</i>
						</a>
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
				url : './book/allbook'
			}).then(function successCallback(response) {
				$scope.books = response.data;
				datas = $scope.books;
				var simpleList = datas ;				
		    	vm.tableParams = new NgTableParams({}, {
		      		dataset: simpleList
		    	});
			}, function errorCallback(response) {
				// 请求失败执行代码
			});
	
			$scope.search = function() {
				$http({
					method : 'GET',
					url : './search',
					params : {
						bookname : $scope.keyword
					}
				}).then(function successCallback(response) {
					$scope.books = response.data;
					datas = $scope.books;
					var simpleList = datas ;				
		    		vm.tableParams = new NgTableParams({}, {
		      			dataset: simpleList
		    		});
				}, function errorCallback(response) {
					// 请求失败执行代码
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
	
		function book_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}
		function book_change(title, url, obj, w, h) {
				var u = url+"?bookid="
					+ $(obj).parents("tr").children().eq(1).text() + "&bookname="
					+ $(obj).parents("tr").children().eq(2).text() + "&amount="
					+ $(obj).parents("tr").children().eq(3).text() + "&bookcount="
					+ $(obj).parents("tr").children().eq(4).text() + "&bookManPhone="
					+ $(obj).parents("tr").children().eq(5).text() + "&bookState="
					+ $(obj).parents("tr").children().eq(6).text() + "&bookPlace="
					+ $(obj).parents("tr").children().eq(7).text() + "&bookMoney="
					+ $(obj).parents("tr").children().eq(8).text() + "&storeid="
					+ $(obj).parents("tr").children().eq(9).text() + "&bookRoute="
					+ $(obj).parents("tr").children().eq(10).text() + "&tags0="
					+ $(obj).parents("tr").children().eq(11).text() + "&bookimgurl="
					+ $(obj).parents("tr").children().eq(12).children().attr("src") + "&bookclass="
					+ $(obj).parents("tr").children().eq(13).text();
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
				$.get("./book/bathDelete", {
					checked : stringarray
				});
				window.parent.location.reload();
			});
		}


		function book_del(obj) {
		//alert($(obj).parents("tr").children().eq(1).text());
			layer.confirm('确认要删除吗？', function(index) {
				$.get("./book/delete", {
					bookid : $(obj).parents("tr").children().eq(1).text()
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