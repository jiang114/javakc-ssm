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
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">采购详细信息</div>
	                <div class="col-sm-8">
	                	<div class="btn-group hidden-xs" role="group">
                			<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="apply/create.jsp">
	                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
	                        </button>
	                        <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="apply/view.do">
	                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
	                        </button>
	                        <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="apply/delete.do">
	                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
	                        </button>
							<button type="button" class="btn btn-primary" data-toggle="modal" id="update1111">
								<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>审核
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
					                <th>申请号</th>
					                <th>申请单位</th>
					                <th>申请人</th>
					                <th>申请日期</th>
					                <th>申请数量</th>
					                <th>铅封使用方式</th>
					                <th>铅封类型</th>
					                <th>申请状态</th>

					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td><c:if test="${e.apply_state==0}"><input type="checkbox" name="ids" value="${e.apply_id }"/></c:if></td>
						                <td>${e.apply_id}</td>
										<td>${e.apply_unit}</td>
						                <td>${e.apply_name}</td>
										<td><fmt:formatDate value="${e.createDate }" pattern="yyyy-MM-dd"/></td>
						                <td>${e.apply_count }</td>
						                <td>${e.apply_way }</td>
						                <td>${e.apply_type }</td>
										<td><zhg:show value="${e.apply_state }" codeTp="apply_state"></zhg:show></td>
						            </tr>
					            </c:forEach>
					        </tbody>
					    </table>
				    <div class="page">${page}</div>
			     </div>

					<!--弹出订单基本信息-->

					<div class="modal fade nestedBox" id="MModal2" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"  style = "z-index: 9999999 !important">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title">订单基本信息</h5>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<form>
										<div class="row">
										<div class="form-group">
											<label class="col-sm-3 control-label" >生产厂家名称</label>
											<div class="col-sm-9">
												<input class="form-control" type="text" name="order_name">
											</div>
										</div>
										</div>
										</br>
										<div class="row">
										<div class="form-group">
											<label class="col-sm-3 control-label" >生产厂家描述</label>
											<div class="col-sm-9">
												<input class="form-control" type="text" name="order_describe">
											</div>
										</div>
										</div>
									</form>
								</div>
								<div class="modal-footer  btn-toolbar hidden-xs" role="group">
									<div class="col-sm-9"></div>
									<div class="col-sm-3">
									<button type="button" class="btn btn-primary" id="tijiao" name="order/create.do">
										<i class="glyphicon"></i>确定
									</button>
									<button type="button" class="btn btn-default" data-dismiss="modal">
										<i class="glyphicon"></i>关闭
									</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--弹出订单基本信息END-->

			     </form>
			</div>
		</div>
	</body>
	<script type="text/javascript">
		//修改选中的节点数据
		$('#update1111').click(function()
		{
			if($.selectedCount2())
			{
				$('#MModal2').modal("show");
			}
		});
		$.extend({'selectedCount2':function(){
				var selected = $('input[name=ids]:checked').length;

					if(selected == 0)
					{
						swal({title:"温馨提示",text:"审核信息时,最少要选择一条信息"});
						return false;
					} else {

						return true;
					}

			}});
	$('#tijiao').click(function () {
		var url = root+$(this).attr('name');
	   $("#searchForm").attr('action', url).submit();
	});


	</script>
</html>