<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<script src="http://apps.bdimg.com/libs/angular.js/1.4.6/angular.min.js"></script>
	<script src="https://unpkg.com/ng-table@2.0.2/bundles/ng-table.min.js "></script>
	<link rel="stylesheet"; href="https://unpkg.com/ng-table@2.0.2/bundles/ng-table.min.css ">
	<link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <div div class="Hui-article" ng-app="myApp" ng-controller="editStoreItemController as vm">
 		  <h1 style="display:none"><%=request.getParameter("storeid") %></h1>
			<table ng-table="vm.tableParams" style="table-layout:fixed;" 
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="25"><input type="checkbox" name="" value=""></th>
						<th width="40">书籍id</th>
						<th width="60">书名</th>
						<th width="60">数量</th>
						<th width="60">书籍图片</th>
						<th width="60">网点名称</th>
						<th width="60">增加书籍</th>
					</tr>
				</thead>
				<tbody>
					<tr class="text-c" ng-repeat="book in $data">						
						<td><input type="checkbox" value="1" name="" onclick="clicked(this)"></td>
						<td vertical-align="middle">{{book.bookid}}</td>
						<td>{{book.bookname}}</td>
						<td>{{book.amount}}</td>
						<td><img width="70px" height="100px" alt="{{book.bookname}}" title="{{book.bookname}}" src="{{book.bookimgurl}}"></td>
						<td>{{book.storename}}</td>
						<td class="td-manage">
							<input class="input-text radius" style="width:40px;height:20px;">
							<a title="添加书籍" href="javascript:;" onclick="store_bookAdd(this)" class="ml-5" style="text-decoration: none">
								<i class="Hui-iconfont">&#xe600;</i>
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
	var storeID = document.querySelector('h1').innerHTML;//获取网点id
	var array = new Array();
	var app = angular.module('myApp', ['ngTable']);
	var datas;		
	editStoreItemController.$inject = ["NgTableParams"];
	app.controller("editStoreItemController", editStoreItemController);		
	app.controller('editStoreItemController', function($scope, $http,NgTableParams) {
		var vm= this;
		$http({
			method : 'GET',
			url : './book/searchBookByStoreid',
			params : {
					storeid : storeID
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

	//增加书籍
	 function store_bookAdd(obj) {
			var books = $(obj).parents("td").find('input').val();
			$.get("./store/storeBookAmount", {
				bookid : $(obj).parents("tr").children().eq(1).text(),
				addBooks : books
			});
			window.location.reload();
		}

	</script>
</body>
</html>