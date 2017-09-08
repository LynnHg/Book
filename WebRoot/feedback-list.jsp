<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib	uri="http://www.springframework.org/tags" prefix="spring"%>
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

<title>反馈意见管理-反馈列表</title>
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
	<i class="Hui-iconfont">&#xe67f;<a href="index.jsp"> 首页</a></i>
	
	<span class="c-gray en">&gt;意见反馈</span>
	
	<span class="c-gray en">&gt;反馈列表</span> 
	
	<a
		class="btn btn-success radius r"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i>刷新列表</a></nav>
	<!-- 此处ng-cotroller进行更改 -->	
	<div class="Hui-article" ng-app="myApp" ng-controller="editStoreItemController as vm">
	
	
	
	
		<article class="cl pd-20">

		<div class="text-c">
			日期范围： <input type="text" onChange=""
				onfocus="WdatePicker({Date:'#F{$dp.$D(\'date\')||\'%y-%M-%d\'}'})"
				id="datemin" name="datemin" ng-model="datemin"
				 class="input-text Wdate"  style="width: 120px;" />
				
				
			<input type="text" onChange=""
				onfocus="WdatePicker({Date:'#F{$dp.$D(\'date\')||\'%y-%M-%d\'}'})"
				id="datemax" name="datemax" ng-model="datemax"
				 class="input-text Wdate"  style="width: 120px;" />
				
				
				
			<input type="text" class="input-text" style="width: 250px" 
				placeholder=" search link :" id="keyword" name="keyword" ng-model="keyword" />
				
			
			
			<button class="btn btn-success radius" 
				ng-click="searchfeedbackText()">
				<i class="Hui-iconfont">&#xe665;</i>搜索
			</button>
			
			
			
		</div>
		
		
		
		
		
		
		
		
		
		<!--（1） bathdelete()方法下面注意 -->
		<!--（2） member_add()方法下面注意 -->
		<!--（3） member_addfeedback()方法下面注意 feedbacks以前是users-->
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"><a href="javascript:;" onclick="bathDelete()"
			
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a> 
					
					<a href="javascript:;"				
				onclick="feedback_add('添加反馈信息','feedback-add.jsp','600','670')"
				class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i>
					增加</a>
					
				
					
					</span> <span class="r">共有：<strong>{{feedbacks.length}}</strong>
				条
			</span>
		</div>

		<div class="mt-20">

			<table ng-table="vm.tableParams" 
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="25"><input type="checkbox" name="" value=""></th>
						
						<th width="100">反馈时间</th>
						<th width="150">反馈内容</th>
						<th width="100">反馈状态</th>
						<th width="100">反馈结果</th>
						<th width="70">openID</th>
						<th width="100">操作</th>
					</tr>
				</thead>
				<tbody>
				<!--（4） feedback in feedbacks注意以前是user in users-->
				<!--（5）feedbackState需要借用之前男生女生那个 -->
					<tr class="text-c" ng-repeat="feedback in $data">
						<td><input type="checkbox" value="1" name=""
							onclick="clicked(this)"></td>
						<td style="display:none;">{{feedback.feedbackid}}</td>
						<td>{{feedback.feedbackTime}}</u></td>
						<td>{{feedback.feedbackText}}</td>
						
						<!-- <td>{{feedback.feedbackState}}</td> -->
						
						<td> <div ng-app="" ng-init="points=['处理中','已处理']">

                       <p><span ng-bind="points[feedback.feedbackState]"></span></p>

                          </div>  </td>
						
						
						<td>{{feedback.feedbackResult}}</td>
						<td>{{feedback.openid}}</td>
						<!--  <td class="td-status"><span
							class="label label-success radius">{{user.userState}}</span></td>
							-->
							
							<!--（6）处理功能member-feedbackhandle。jsp按照以前的 -->
							<!--（7）删除功能 按照以前的 onclick="member_delfeedback(this)下面有-->
						<td class="td-manage"><a style="text-decoration: none"
							class="ml-5"
							onclick="feedback_change('处理','feedback-change.jsp',this,'600','670')"
							href="javascript:;" title="处理"><i class="Hui-iconfont">&#xe63f;</i></a>&nbsp
							&nbsp &nbsp<a title="删除" href="javascript:;"
							onclick="feedback_del(this)" class="ml-5"
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
			var vm= this;
			//页面加载自动执行，查询数据
			$http({
				method : 'GET',
				url : './feedback/allFeedBack'
			}).then(function successCallback(response) {
				$scope.feedbacks = response.data;
				datas = $scope.feedbacks;
				var simpleList = datas ;				
		    	vm.tableParams = new NgTableParams({}, {
		      		dataset: simpleList
		    	});
			}, function errorCallback(response) {
			});
			
							
				
				$scope.searchfeedbackText = function() {
				
				$http({
					method : 'GET',
					url : './feedback/searchfeedbackText',
					params : {
						openid : $scope.keyword,
						firstfeedbackTime : $scope.datemin,
						lastfeedbackTime : $scope.datemax
					}
				}).then(function successCallback(response) {
					$scope.feedbacks = response.data;
					datas = $scope.feedbacks;
					var simpleList = datas ;				
		    		vm.tableParams = new NgTableParams({}, {
		      			dataset: simpleList
		    		});
				}, function errorCallback(response) {
				});
				
			}						
	
				
			
			$scope.bathselect = function() {
				$http({
					method : 'GET',
					url : './feedback/bathselect',
					params : {
						openid : $scope.keyword
					}
				}).then(function successCallback(response) {
					$scope.feedbacks = response.data;
					datas = $scope.feedbacks;
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
	
	
		

	
		
		
		
		
		/*意见反馈-添加*/
		function feedback_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}

		/*意见反馈-修改*/
		function feedback_change(title, url, obj, w, h) {
			var u = url + "?feedbackid="
					+ $(obj).parents("tr").children().eq(1).text() + "&feedbackTime="
					+ $(obj).parents("tr").children().eq(2).text() + "&feedbackText="
					+ $(obj).parents("tr").children().eq(3).text() + "&feedbackState="
					+ $(obj).parents("tr").children().eq(4).text()
					+ "&feedbackResult="
					+ $(obj).parents("tr").children().eq(5).text()
					+ "&openid="
					+ $(obj).parents("tr").children().eq(6).text();
			layer_show(title, u, w, h);

		}
		
		//批量删除
		function bathDelete() {
			//array转成字符串 作为参数
			var stringarray = array.toString();
			var i = 0;
			layer.confirm('确认要删除吗？', function(index) {
				$.get("./feedback/bathDelete", {
					checked : stringarray
				});
				window.parent.location.reload();
			});
		}

       
			

		//checkbox 被选中的那行的opend存进arrary
		function clicked(obj) {
			array.push($(obj).parents("tr").children().eq(1).text());
		}

		/*意见反馈-删除*/
		function feedback_del(obj) {
			layer.confirm('确认要删除吗？', function(index) {
				$.get("./feedback/deleteFeedBack", {
					feedbackid : $(obj).parents("tr").children().eq(1).text()
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