<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<script src="http://apps.bdimg.com/libs/angular.js/1.4.6/angular.min.js"></script>
	<script src="https://unpkg.com/ng-table@2.0.2/bundles/ng-table.min.js "></script>
	<link rel="stylesheet"; href="https://unpkg.com/ng-table@2.0.2/bundles/ng-table.min.css ">
	<link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="Hui-article" ng-app="myApp" ng-controller="editStoreItemController as vm"> 
	<table ng-table="vm.tableParams" class="table table-border table-bordered table-hover table-bg table-sort"  >
		<thead>
			<tr class="text-c">
				<th width="25"><input type="checkbox" name="" value=""></th>
				<th width="100">网点ID</th>
				<th width="100">网点名称</th>
				<th width="150">网点区域</th>
				<th width="100">所在城市</th>
				<th width="100">书籍总量</th>
				<th width="100">书籍销量</th>
				<th width="100">库存量</th>
				<th width="100">库存管理</th>
			</tr>
		</thead>
	 	<tbody>
			<tr class="text-c" ng-repeat="store in $data">
				<td><input type="checkbox" value="1" name="" onclick="clicked(this)">
				</td>
				<td>{{store.storeid}}</td>
				<td>{{store.storeName}}</td>
				<td>{{store.storePlace}}</td>
				<td>{{store.city}}</td>
				<td>{{store.book.amount}}</td>
				<td>{{store.books}}</td>
				<td>{{store.book.amount-store.books}}</td>
				<td class="td-manage">
					<a title="进货" href="javascript:;" onclick="store_bookAdd('进货','store-bookAdd.jsp',this,'1000','600')" class="ml-5" style="text-decoration: none">
						<i class="Hui-iconfont">&#xe669;</i>
					</a>
				</td>
			</tr>
		</tbody>    
	</table>
</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
	<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
	<script type="text/javascript">
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
				url : './store/storeRank'
			}).then(function successCallback(response) {
				$scope.stores = response.data;
				datas = $scope.stores;
				var simpleList = datas ;
				vm.tableParams = new NgTableParams({}, {
		      		dataset: simpleList
		    	});
			}, function errorCallback(response) {
			});
		});
		function editStoreItemController(NgTableParams) {			
		    var simpleList = datas ;
			var vm= this;			
		    vm.tableParams = new NgTableParams({}, {
		      dataset: simpleList
		    });
		 };	
		//书籍进货
		 function store_bookAdd(title, url,obj, w, h) {
			var u = url + "?storeid=" + $(obj).parents("tr").children().eq(1).text()
				layer_show(title, u, w, h);
			}
	</script>
</body>
</html>