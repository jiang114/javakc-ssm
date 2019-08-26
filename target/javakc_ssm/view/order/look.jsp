<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>测试添加页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins ">
				<form action="${path }/apply/update.do" method="post" class="form-horizontal" role="form">
                    <input name="apply_id" id="testId" value="${applyEntity.apply_id}" type="hidden"/>
                    <fieldset>
                        <legend>申请单详情信息</legend>
                        <div class="form-group" >
                            <label class="col-sm-2 control-label" >申请单位名称</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="apply_unit" value="${applyEntity.apply_unit}">
                            </div>
                            <label class="col-sm-2 control-label" >申请人姓名</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="apply_name" value="${applyEntity.apply_name}">
                            </div>
                        </div>


                       <div class="form-group">
                          <label class="col-sm-2 control-label" >申请数量</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="apply_count" value="${applyEntity.apply_count}">
                          </div>
                          <label class="col-sm-2 control-label" >申请日期</label>
                          <div class="col-sm-4">
                              <input class="form-control" type="date"  name="apply_date" value="<fmt:formatDate value="${applyEntity.apply_date}" pattern="yyyy-MM-dd"/>"/>
                          </div>
                       </div>
                        <div class="form-group">
                        <label class="col-sm-2 control-label" >铅封使用方式</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="text" name="apply_way" value="${applyEntity.apply_way}">
                        </div>
                          <label class="col-sm-2 control-label" >申请状态</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="apply_state" value="${applyEntity.apply_state}">
                          </div>

                       </div>
						<div class="form-group">

                          <label class="col-sm-2 control-label" >铅封类型</label>
                          <div class="col-sm-4">
                            <zhg:select codeTp="sex" cls="form-control" name="apply_type"  value="${applyEntity.apply_type}"></zhg:select>
                          </div>
							<label class="col-sm-2 control-label" >申请号</label>
							<div class="col-sm-4">
                                <input class="form-control" type="text" name="apply_id" value="${applyEntity.apply_id}">
							</div>
                       </div>
                        <legend>订单信息</legend>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" >订单批次号</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="order_id" value="${orderEntity.order_id}">
                            </div>
                            <label class="col-sm-2 control-label" >订单状态</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="order_state" value="${orderEntity.order_state}">
                            </div>

                        </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" >生产厂家名称</label>
                                <div class="col-sm-9">
                                    <input class="form-control" type="text" name="order_name" value="${orderEntity.order_name}">
                                </div>
                            </div>

                        </br>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" >生产厂家描述</label>
                                <div class="col-sm-9">
                                    <input class="form-control" type="text" name="order_describe" value="${orderEntity.order_describe}">
                                </div>
                            </div>

                    </fieldset>
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label" ></label>
                           	<div class="col-sm-4">
                              	<input type="submit" value="提交" class="btn btn-primary"/>
                           	</div>
                           	<label class="col-sm-2 control-label" ></label>
                           	<div class="col-sm-4">
                              	<input type="reset" value="重置" class="btn btn-danger" id="resetForm"/>
                           	</div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
	<script type="text/javascript" src="./js/apply.js"></script>
</html>