<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Cache-Control" content="no-cache">
<title>登录信息</title>
<style type="text/css">
input.form-control {-webkit-text-fill-color: #555}
</style>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>


<script src="js/bootstrap.js"></script>
<link href="css/bootstrap.css" rel="stylesheet" />


<script src="js/bootstrap-table.js"></script>
<link href="css/bootstrap-table.css" rel="stylesheet" />
<script src="js/bootstrap-table-zh-CN.js"></script>

<link href="css/bootstrap-editable.css" rel="stylesheet" />
<script src="js/bootstrap-table-editable.js"></script>
<script src="js/bootstrap-editable.js"></script>

<link href="css/style.css" rel='stylesheet' type='text/css' />

<link
	href='http://fonts.lug.ustc.edu.cn/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">

			jQuery(document).ready(function($) {
				$(".scroll").click(function(event) {
					event.preventDefault();
					$('html,body').animate({
						scrollTop : $(this.hash).offset().top
					}, 1000);
				});
			});
		</script>

<!--start-smoth-scrolling-->
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="css/component.css" />
</head>
<body>
<!--header-->
	<div class="header-top" id="home">
		<div class="container">
			<div class="header-logo">
				<a href="front.jsp"><img src="images/logo.png" alt="" /></a>
			</div>

			<div class="top-nav">
				<span class="menu"><img src="images/menu-icon.png" alt="" /></span>
				<ul class="nav1">
					<li><a href="showallRegVehicle.jsp">车辆注册信息</a></li>
					<li><a href="showall.jsp">用户注册信息</a></li>
					<li><a href="loginstatus.jsp">用户在线信息</a></li>
					<li><a href="overspeed.jsp">超速统计</a></li>
					<li><a href="mileage.jsp">里程统计</a></li>
					<li><a id="#b01" href="">一键提醒</a></li>
					<li><a href="javascript:openWin('gettrack.jsp')">轨迹回放</a></li>
					<li><a href="SendYuejie">越界提醒</a></li>
				</ul>
				<!-- script-for-menu -->
				<script>
					$("span.menu").click(function() {
						$("ul.nav1").slideToggle(300, function() {
							// Animation complete.
						});
					});
				</script>
				<!-- /script-for-menu -->
			</div>
			<div class="social-icons">
				<ul>
					<li><a href="#"><span class="twit"> </span></a></li>
					<li><a href="#"><span class="fb"> </span></a></li>
					<li><a href="#"><span class="g"> </span></a></li>
				</ul>
				<li id="remainTime" style="color:white;">平台将于<span
					style="color:red">10</span>s后刷新
				</li>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="search-box">
			<div id="sb-search" class="sb-search">
				<form>
					<input class="sb-search-input"
						placeholder="Enter your search term..." type="search"
						name="search" id="search"> <input class="sb-search-submit"
						type="submit" value=""> <span class="sb-icon-search">
					</span>
				</form>
			</div>
		</div>
		<div class="header-info-right">
			<div class="header cbp-spmenu-push">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left"
					id="cbp-spmenu-s1"> <a href="showallRegVehicle.jsp">车辆注册信息</a>
				<a href="showall.jsp">用户注册信息</a> <a href="loginstatus.jsp">用户在线信息</a>
				<a href="overspeed.jsp">超速统计</a> <a href="mileage.jsp">里程统计</a> <a
					id="#b01" href="">一键提醒</a> <a
					href="javascript:openWin('gettrack.jsp')">轨迹回放</a> <a
					href="SendYuejie">越界提醒</a> </nav>
				<!--script-nav -->
				<script>
					$("span.menu").click(function() {
						$("ul.navigatoin").slideToggle("300", function() {});
					});
				</script>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event) {
							event.preventDefault();
							$('html,body').animate({
								scrollTop : $(this.hash).offset().top
							}, 1000);
						});
					});
				</script>
				<div class="clearfix"></div>
				<!-- /script-nav -->
				<div class="main">

					<button id="showLeftPush">
						<img src="images/menu.png" /><span>Menu</span>
					</button>
				</div>
				<!-- Classie - class helper functions by @desandro https://github.com/desandro/classie -->
				<script src="js/classie.js"></script>
				<script>
					var menuLeft = document.getElementById('cbp-spmenu-s1'),
						showLeftPush = document.getElementById('showLeftPush'),
						body = document.body;
				
					showLeftPush.onclick = function() {
						classie.toggle(this, 'active');
						classie.toggle(body, 'cbp-spmenu-push-toright');
						classie.toggle(menuLeft, 'cbp-spmenu-open');
						disableOther('showLeftPush');
					};
				</script>
			</div>
		</div>
	</div>
	<!--//header-->
	<div class="panel-body" style="padding-bottom:0px;">
		<div class="panel panel-default" style="height:150px;">
			<div class="panel-heading">查询条件</div>
			<div class="panel-body">
				<form id="formSearch" class="form-horizontal">
					<div class="form-group" style="margin-top:15px">
						<label class="control-label col-sm-1"
							for="txt_search_departmentname">车主</label>
						<div class="col-sm-3">
							<input type="text" class="form-control"
								id="txt_search_departmentname">
						</div>
						<label class="control-label col-sm-1" for="txt_search_statu">驾驶员</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" id="txt_search_statu">
						</div>
						<div class="col-sm-4" style="text-align:left;">
							<button type="button" style="margin-left:50px" id="btn_query"
								class="btn btn-primary">查询</button>
						</div>
					</div>
				</form>
			</div>
		</div>

		<div id="toolbar" class="btn-group">
			<button id="btn_add" type="button" class="btn btn-default">
				<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
			</button>
		</div>
		<table id="tb_departments"></table>
	</div>
	<div class="modal fade" id="addModal" tabindex="-1" role="dialog"
		aria-labelledby="addModalLabel" data-backdrop="false">
		<div class="modal-dialog" role="document" style="margin-top:10%;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="addModalLabel">添加信息</h4>
				</div>
				<div class="modal-body">
					<form id="add_form_modal" class="form-horizontal">
						<div class="form-group">
							<div class="col-sm-3">
								<label class="control-label" for="add_deviceid">设备编号</label>
							</div>

							<div class="col-sm-9">
								<select class="form-control" name="deviceid" id="seldev">
								<option class="form-control">请选择</option>
								</select>
								
							</div>
							<label class="err-info-modal"></label>
						</div>
						
						<div class="form-group">
							<div class="col-sm-3">
								<label class="control-label" for="engineid">发动机号</label>
							</div>
							<div class="col-sm-9">
								<input type="text" name="engineid" class="form-control"
									id="add_engineid">
							</div>
							<label class="err-info-modal"></label>
						</div>
						
						<div class="form-group">
							<div class="col-sm-3">
								<label class="control-label" for="add_owner">车主</label>
							</div>

							<div class="col-sm-9">
								<select class="form-control" id="selowner" name="owner">
									<option class="form-control">请选择</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-3">
								<label class="control-label" for="add_chepai">车牌</label>
							</div>

							<div class="col-sm-9">
								<input type="text" name="chepai" class="form-control"
									id="add_chepai">
							</div>
							<label class="err-info-modal"></label>
						</div>

						<div class="form-group">
							<div class="col-sm-3">
								<label class="control-label" for="add_model">车型</label>
							</div>

							<div class="col-sm-9">
								<input type="text" name="model" class="form-control"
									id="add_model">
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-3">
								<label class="control-label" for="add_brand">品牌</label>
							</div>

							<div class="col-sm-9">
								<input type="text" name="brand"
									class="form-control" id="add_brand">
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-3">
								<label class="control-label" for="add_driverid">驾驶证号</label>
							</div>

							<div class="col-sm-9">
								<input type="text" name="driverid" class="form-control"
									id="add_driverid">
							</div>
						</div>

					</form>

					<div class="modal-footer">
						<button type="button" class="btn btn-default btn_reset_c"
							data-dismiss="modal">
							<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>取消
						</button>

						<button type="button" id="btn_add_reset"
							class="btn btn-default btn_reset_c">
							<span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span>重置
						</button>

						<button type="button" id="btn_add_submit" class="btn btn-primary"
							data-dismiss="modal">
							<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<script>
$(function () {

    //1.初始化Table
    var oTable = new TableInit();
    oTable.Init();

    //2.初始化Button的点击事件
    var oButtonInit = new ButtonInit();
    oButtonInit.Init();

});

var TableInit= function(){
	var oTableInit = new Object();
	columns = [
                  {
                      checkbox: true
                  },
                  {
                      field: 'device_id',
                      title: '设备编号',
                      align: 'center',
                      width:300,
                      //sortable:true
                  }, {
                      field: 'owner',
                      title: '车主',
                      align: 'center',
                      sortable:true
                  }, {
                      field: 'chepai',
                      title: '车牌',
                      align: 'center',
                      sortable:true
                  }, {
                      field: 'brand',
                      title: '品牌',
                      align: 'center',
                      sortable:true
                  }, {
                      field: 'engine_id',
                      title: '发动机号',
                      align: 'left',
                      halign:'center', //设置表头列居中对齐
                      editable: {
                      	type:'text',
                      	title:'发动机号',
                      	validate:function (v){
                      		if(!v) return '发动机号不能为空';
                      	}
                      },
                      sortable:true
                  }, {
                      field: 'model',
                      title: '型号',
                      align: 'center',
                      sortable:true
                  }, {
                      field: 'driver_id',
                      title: '驾驶员',
                      align: 'center',
                      sortable:true,
                      editable: {
                      	type:'text',
                      	title:'驾驶员证',
                      	validate:function (v){
                      		if(!v) return '驾驶员号不能为空';
                      	}
                      }
                  }, {
                        field: 'device_id',
                        title: '操作',
                        width: 120,
                        align: 'center',
                        valign: 'middle',
                        formatter: actionFormatter,
                   }
              ];
    //初始化Table
    oTableInit.Init = function () {
    	$('#tb_departments').bootstrapTable({
          url: 'SearchallRegVehicle',   //url一般是请求后台的url地址,调用ajax获取数据。此处我用本地的json数据来填充表格。
          method: "post",                     //使用get请求到服务器获取数据
          dataType: "json",
          contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
            toolbar: '#toolbar',                //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,                   //是否显示分页（*）
            sortable: true,                     //是否启用排序
            sortName:"device_id",
            sortOrder: "asc",                   //排序方式
            uniqueId: "device_id",
            queryParams: oTableInit.queryParams,//传递参数（*）
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber:1,                       //初始化加载第一页，默认第一页
            pageSize: 10,                       //每页的记录行数（*）
            pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
            search: false,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
            strictSearch: true,
            showColumns: true,                  //是否显示所有的列
            showRefresh: true,                  //是否显示刷新按钮
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            height: 500,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
            showToggle:true,                    //是否显示详细视图和列表视图的切换按钮
            cardView: false,                    //是否显示详细视图
            detailView: false,                   //是否显示父子表
            columns:columns,
            
            onEditableSave: function (field, row, oldValue, $el) {
                    //可进行异步操作

                    $.ajax({
                        type: "post",
                        url: "EditReg",
                        data: {
                        	engineid:row.engine_id,
                        	driverid:row.driver_id,
                        	deviceid:row.device_id
                        },
                        success: function (data) {
                            if (JSON.parse(d).result_code == 200) {
                                alert('提交数据成功');
                            }
                        },
                        error: function () {
                            alert('编辑失败');
                        },
                        complete: function () {
                        }
                    });
                }
      });
    };
    oTableInit.queryParams = function (params) {
    	console.log(params)
        var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            limit: params.limit,   //页面大小
            offset: params.offset,  //页码
            order: params.order,
        	ordername: params.sort,
            owner: $("#txt_search_departmentname").val(),
            driver: $("#txt_search_statu").val()
        };
        return temp;
    };
    return oTableInit;
    function actionFormatter(value, row, index) {
                var id = value;
                var result = "";
                //result += '<button id="dupUser" class="btn btn-xs blue" deviceid='+value+' onclick="updUser(' + value + ')" title="编辑"><span class="glyphicon glyphicon-pencil"></span></button>';
                result += '<button id="delUser" class="btn btn-xs red" deviceid='+value+' onclick="delUser(this)" title="删除"><span class="glyphicon glyphicon-remove"></span></button>';
                return result;
            }
};
var ButtonInit = function () {
    var oInit = new Object();
    var postdata = {};

    oInit.Init = function () {
        //初始化页面上面的按钮事件
        $('#btn_query').on('click',function(){
			$("#tb_departments").bootstrapTable('refresh');
		});
		// 当点击【新增】按钮后，把模态框弹出来
		$("#btn_add").on("click",function (){
			$("#addModal").modal({
				keyboard: true
			});
			clearForm("#add_form_modal");// 清除表单上一次的输入数据	
		});
 
	// helper: 重置表单
		function clearForm(form){
    		$(form)[0].reset();
		};
 
	// 当点击【保存】按钮后，将表单中的数据提交到后台
		$("#btn_add_submit").on("click",function (){
			console.log($("#add_form_modal").serializeArray());
			$.ajax({
				type: "post",
				url: "TableRegVeh",
				data: $("#add_form_modal").serializeArray(),              // 收集表单中的数据
				dataType: "text",
				success: function (d){
					var mymessage = confirm(JSON.parse(d).result_msg);
					$("#tb_departments").bootstrapTable('refresh');
				}
			});
		});
    };
    
    return oInit;
};
function delUser(dom) {
   
    var mymessage = confirm("确认删除嘛？");
    console.log($(this).attr("deviceid"))
    if (mymessage == true) {
        $.ajax({
            url :'DeleteReg',
            type : 'post',
            data:{engineid:$(dom).attr('deviceid')},
            success : function(data) {
                $(dom).parent().parent().hide();
            },
            error : function(data){
                alert("服务器繁忙")
            }
        });
    }
}
function updUser(id) {
    layer.open({
        type : 2,
        title : '编辑注册车辆',
        area : [ '500px', '440px' ],
        fix : false, // 
        content : path + '/user/pageUpd/' + id,
        end : function() {
            $("#mytab").bootstrapTable('refresh', {
                url : path + "/user/list"
            });
        }
    });
   
}
</script>
<script>
$(document).ready(function () {
    var url="/XM14/SelectVehicleServlet"; //访问后台去数据库查询select的选项,此处需填写后台接口路径
    $.ajax({
        type:"get",
        url:url,
        datatype:"json",
        success:function(userList){
            var unitObj=$("#seldev"); //页面上的<html:select>元素
            var parsedJson = jQuery.parseJSON(userList);
            //console.log(data[0].Device_id);
            if(parsedJson!=null){ //后台传回来的select选项
                for(var i=0;i<parsedJson.length;i++){
                    //遍历后台传回的结果，一项项往select中添加option
                    unitObj.append("<option>"+parsedJson[i].Device_id+"</option>");
                }
            }
        },
        error:function(){
            J.alert('Error');
        }
    })
})
</script>
<script>
$(document).ready(function () {
    var url="/XM14/SelectUser"; //访问后台去数据库查询select的选项,此处需填写后台接口路径
    $.ajax({
        type:"get",
        url:url,
        datatype:"json",
        success:function(userList){
            var unitObj=$("#selowner"); //页面上的<html:select>元素
            var parsedJson = jQuery.parseJSON(userList);
            //console.log(data[0].Device_id);
            if(parsedJson!=null){ //后台传回来的select选项
                for(var i=0;i<parsedJson.length;i++){
                    //遍历后台传回的结果，一项项往select中添加option
                    unitObj.append("<option>"+parsedJson[i].username+"</option>");
                }
            }
        },
        error:function(){
            J.alert('Error');
        }
    })
})
</script>