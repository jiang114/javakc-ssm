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
						<button type="button" class="btn btn-primary" data-toggle="modal" id="update1111" name="audit/view3.do">
							<i class="glyphicon" aria-hidden="true"></i>查看
						</button>
						<button type="button" class="btn btn-success" data-toggle="modal" id="update" name="audit/view2.do">
							<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
						</button>
						<button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="audit/delete.do">
							<i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
						</button>
						<button type="button" class="btn btn-primary" data-toggle="modal" id="create2" name="audit/view.do">
							<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>新增
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
						<th>驾驶员姓名</th>
						<th>稽查地点</th>
						<th>稽查机构</th>
						<th>稽查日期</th>
						<th>处罚金额</th>
						<th>整改情况</th>
						<th>稽查结果</th>
						<th>扣分情况</th>
					</tr>
					</thead>
					<tbody>
					<c:set var="vs"></c:set>
					<c:forEach var="e" items="${page.list }" varStatus="v">
						<tr>
							<td><input type="checkbox" name="ids" value="${e.inspection_id}"/></td>
							<td>${e.basicEntity.driver_name }</td>
							<td>${e.inspection_adress}</td>
							<td>${e.inspection_org_name}</td>
							<td><fmt:formatDate value="${e.inspection_time}" pattern="yyyy-MM-dd" /></td>
							<td>${e.inspection_money}</td>
							<td>${e.inspection_rectify}</td>
							<td>${e.inspection_result}</td>
							<td>${e.inspection_points}</td>
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
    $('#create2').click(function()
    {
            var url = root+$(this).attr('name');
            $("#searchForm").attr('action', url).submit();
    });

</script>

</html>