<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>测试展示列表页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>

	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="" method="get">

				<div class="col-sm-12" id="hhhh111">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">采购详细信息</div>
	                <div class="col-sm-8">
	                	<div class="btn-group hidden-xs" role="group">
                			<button type="button" class="btn btn-primary" data-toggle="modal" id="update1111" name="order/view.do">
	                            <i class="glyphicon" aria-hidden="true"></i>查看
	                        </button>
	                        <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="order/view2.do">
	                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
	                        </button>
	                        <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="apply/delete.do">
	                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>作废
	                        </button>
							<button type="button" class="btn btn-primary" data-toggle="modal" id="update22" name="order/updateState.do">
								<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>生成订单
							</button>
		                 </div>
	                </div>
	                <div class="col-sm-4">
	                	<input class="form-control" id="search" name="testName" value="${testEntity.testName }" type="text" placeholder="查询内容 回车搜索"/>
	                </div>
	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/></th>
					                <th>订单批次号</th>
					                <th>生产厂家名称</th>
					                <th>订单日期</th>
					                <th>订单数量</th>
					                <th>申请状态</th>
					                <th>查看</th>


					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td><c:if test="${e.order_state==0}"><input type="checkbox" name="ids" value="${e.order_id}"/></c:if></td>
						                <td>${e.order_id}</td>
						                <td>${e.order_name }</td>
										<td><fmt:formatDate value="${e.order_date }" pattern="yyyy-MM-dd"/></td>
						                <td>${e.order_count }</td>
										<td><zhg:show value="${e.order_state }" codeTp="order_state"></zhg:show></td>
										<td>
											<button type="button" class="btn btn-primary" data-toggle="modal" id="update11113" name="order/view.do" value="${e.order_id }" onclick="chakan('${e.order_id }')">
											<i class="glyphicon" aria-hidden="true"></i>查看
										     </button>
										</td>
						            </tr>
					            </c:forEach>
					        </tbody>
					    </table>
				    <div class="page">${page}</div>
			     </div>
			     </form>
			</div>
		</div>
	</body>
	<script type="text/javascript">
	//修改选中的节点数据
	function chakan(ids){
		var url = root+'order/view.do';
		var html ='<input name="ids" value="'+ids+'">'
		$("#hhhh111").before(html);
	    $("#searchForm").attr('action', url).submit();

         //异步
		// $.get(root+'order/view3.do', {ids: ids}, function(result) {
        //   alert(JSON.stringify(result))
		// });
	}


	$('#update1111').click(function()
	{
		var ids =$(this).val();
	if($.selectedCount2())
	{
		var url = root+$(this).attr('name');
		$("#searchForm").attr('action', url).submit();
	}
	});
	$.extend({'selectedCount2':function(){
	var selected = $('input[name=ids]:checked').length;

	if(selected !=1)
	{
	swal({title:"温馨提示",text:"查看信息时,只能选择一条信息"});
	} else {

	return true;
	}

	}});
	$('#update22').click(function()
	{
		if($.selectedCount3('update'))
		{
			var url = root+$(this).attr('name');
			$("#searchForm").attr('action', url).submit();
		}
	});
	$.extend({'selectedCount3':function(){
			var selected = $('input[name=ids]:checked').length;

			if(selected == 0)
			{
				swal({title:"温馨提示",text:"生成订单时,最少要选择一条信息"});
				return false;
			} else {

				return true;
			}
		}});
	</script>

</html>