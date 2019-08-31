<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>驾驶员添加页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">

			<div class="ibox float-e-margins">
				<form action="${path }/audit/create.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                    <legend>驾驶员基本信息</legend>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" >驾驶员姓名</label>
                        <div class="col-sm-4">
                            <select name="driver_id" class="form-control">
                                <c:set var="vs"></c:set>
                                <c:forEach var="e" items="${list}" varStatus="v">
                                    <option value="${e.basicEntity.driver_id}">${e.basicEntity.driver_name }</option>
                                </c:forEach>
                            </select>
                        </div>
                        <label class="col-sm-2 control-label" >稽查时间</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="date" name="inspection_time">
                        </div>
                    </div>           <div class="form-group">
                    <label class="col-sm-2 control-label" >处罚金额</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="inspection_money">
                    </div>
                    <label class="col-sm-2 control-label" >稽查机构</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="inspection_org_name">
                    </div>
                </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" >稽查地点</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="text" name="inspection_adress">
                        </div>
                        <label class="col-sm-2 control-label" ></label>
                        <div class="col-sm-4">
                            <input class="form-control" type="hidden">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" >稽查内容</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="text" name="inspection_contnet">
                        </div>
                        <label class="col-sm-2 control-label" >整改情况</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="text" name="inspection_rectify">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" >扣分情况</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="text" name="inspection_points">
                        </div>
                        <label class="col-sm-2 control-label" >稽查结果</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="text" name="inspection_result"/>
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
</html>