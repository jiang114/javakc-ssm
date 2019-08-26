<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>铅封订单管理</title>
		<%@ include file="../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
    <body>
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="ibox float-e-margins">
            <form id="searchForm" action="">
                <div class="col-sm-12">
                    <!-- ------------按钮组 start------------ -->
<%--                    <div class="alert alert-success" role="alert">采购详细信息</div>--%>
<%--                    <div class="col-sm-8">--%>
<%--                        <div class="btn-group hidden-xs" role="group">--%>
<%--                            <button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="order/look2.jsp">--%>
<%--                                <i class="glyphicon" aria-hidden="true"></i>查看--%>
<%--                            </button>--%>
<%--                            <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="apply/view.do">--%>
<%--                                <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改--%>
<%--                            </button>--%>
<%--                            <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="apply/delete.do">--%>
<%--                                <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>作废--%>
<%--                            </button>--%>
<%--                            <button type="button" class="btn btn-primary" data-toggle="modal" id="update1111">--%>
<%--                                <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>生成订单--%>
<%--                            </button>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-sm-4">--%>
<%--                        <input class="form-control" id="search" name="testName" value="${testEntity.testName }" type="text" placeholder="查询内容 回车搜索"/>--%>
<%--                    </div>--%>
                    <!-- ------------按钮组 end------------ -->
                    <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
                    <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
                    <table class="table table-striped table-bordered table-hover table-condensed">
                        <tbody>
                        <div  class="col-sm-12">
                            <div class="row">
                            <div class="alert alert-success text-center" role="alert"> <h3>申请单详情信息</h3></div>
                            </div>
                            <c:forEach var="e" items="${orderEntity.applyEntities}" varStatus="v">
                        <tr class="sortable-chosen">
                            <td class="col-sm-3">申请单位名称：</td>
                            <td class="col-sm-3">${e.apply_unit}</td>
                            <td class="col-sm-3">申请人姓名：</td>
                            <td class="col-sm-3">${e.apply_name}</td>
                        </tr>
                        <tr>
                            <td class="col-sm-3">申请日期：</td>
                            <td class="col-sm-3"><fmt:formatDate value="${e.createDate }" pattern="yyyy-MM-dd"/></td>
                            <td class="col-sm-3">申请数量：</td>
                            <td class="col-sm-3">${e.apply_count}</td>
                        </tr>
                        <tr>
                            <td class="col-sm-3">铅封使用方式：</td>
                            <td class="col-sm-3">${e.apply_way}</td>
                            <td class="col-sm-3">申请状态：</td>
                            <td class="col-sm-3"><zhg:show value="${e.apply_state }" codeTp="apply_state"></zhg:show></td>
                        </tr>
                        <tr>
                            <td class="col-sm-3">铅封类型：</td>
                            <td class="col-sm-3">${e.apply_type}</td>
                            <td class="col-sm-3">申请号：</td>
                            <td class="col-sm-3">${e.apply_id}</td>
                        </tr>
                            </c:forEach>
                        </div>
                        </tbody>

                    </table>
                    <table class="table table-striped table-bordered table-hover table-condensed">
                    <tbody>
                    <div  class="col-sm-12">
                        <div class="row">
                            <div class="alert alert-success text-center" role="alert"> <h3>订单信息</h3></div>
                        </div>

                        <div>

                            <tr>
                                <td class="col-sm-3">订单批次号：</td>
                                <td class="col-sm-3">${orderEntity.order_id}</td>
                                <td class="col-sm-3">订单状态：</td>
                                <td class="col-sm-3"><zhg:show value="${orderEntity.order_state}" codeTp="order_state"> </zhg:show></td>
                            </tr>
                            <tr>
                                <td class="col-sm-3">生产厂家名称：</td>
                                <td class="col-sm-3">${orderEntity.order_name}</td>
                                <td class="col-sm-3">生产厂家描述：</td>
                                <td class="col-sm-3">${orderEntity.order_describe}</td>
                            </tr>
                        </div>
                    </div>
                    </tbody>
                    </table>
                    <div class="page">${page}</div>
<%--                </div>--%>
            </form>
        </div>
        </div>
    <div>
        <div class="col-sm-12 text-center"><input type="button" value="返回" class="btn btn-success" onclick="javascript:history.back();"/></div>
    </div>
    </div>
    </body>
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
	<script type="text/javascript" src="./js/apply.js"></script>
</html>