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
				<div class="alert alert-success" role="alert">驾驶员基本信息管理</div>
				<div class="col-sm-8">
					<div class="btn-group hidden-xs" role="group">
						<button type="button" class="btn btn-primary" data-toggle="modal" id="update1111" name="basic/view2.do">
							<i class="glyphicon" aria-hidden="true"></i>查看
						</button>
						<button type="button" class="btn btn-success" data-toggle="modal" id="update" name="basic/view.do">
							<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
						</button>
						<button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="basic/delete.do">
							<i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
						</button>
						<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="basic/create.jsp">
							<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>新增驾驶员
						</button>
					</div>
				</div>

				<!-- ------------按钮组 end------------ -->
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<table class="table table-striped table-bordered table-hover table-condensed">
					<thead>
					<tr>
						<th><input type="checkbox" id="checkall"/></th>
						<th>姓名</th>
						<th>所属车队</th>
						<th>所属公司</th>
						<th>驾驶证号</th>
						<th>技术等级</th>
						<th>在职状态</th>
					</tr>
					</thead>
					<tbody>
					<c:set var="vs"></c:set>
					<c:forEach var="e" items="${page.list }" varStatus="v">
						<tr>
							<td><input type="checkbox" name="ids" value="${e.driver_id}"/></td>
							<td>${e.driver_name }</td>
							<td>暂无</td>
							<td>暂无</td>
							<td>${e.driver_license}</td>
							<td>${e.driver_industrial}</td>
							<td>${e.driver_type}</td>
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
	$('#update1111').click(function()
	{


		if($.selectedCount3())
		{
			var url = root+$(this).attr('name');
			$("#searchForm").attr('action', url).submit();
		}
	});
	$.extend({'selectedCount3':function(){
			var selected = $('input[name=ids]:checked').length;

			if(selected !=1)
			{
				swal({title:"温馨提示",text:"查看信息时,只能选择一条信息"});
			} else {

				return true;
			}

		}});


</script>

</html>