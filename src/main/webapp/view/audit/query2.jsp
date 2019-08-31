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

			<div class="ibox float-e-margins">
                <form action="${path }/basic/update.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>驾驶员基本信息</legend>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >驾驶员姓名</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${auditEntity.basicEntity.driver_name }</label>
                            </div>
                            <label class="col-sm-2 control-label" >稽查时间</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${auditEntity.inspection_time}</label>
                            </div>
                        </div>           <div class="form-group">
                        <label class="col-sm-2 control-label" >处罚金额</label>
                        <div class="col-sm-4">
                            <label class="control-label" >${auditEntity.inspection_money}</label>
                        </div>
                        <label class="col-sm-2 control-label" >稽查机构</label>
                        <div class="col-sm-4">
                            <label class="control-label" >${auditEntity.inspection_org_name}</label>
                        </div>
                    </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >稽查地点</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${auditEntity.inspection_adress}</label>
                            </div>
                            <label class="col-sm-2 control-label" ></label>
                            <div class="col-sm-4">
                                <input class="form-control" type="hidden">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >稽查内容</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${auditEntity.inspection_contnet}</label>
                            </div>
                            <label class="col-sm-2 control-label" >整改情况</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${auditEntity.inspection_rectify}</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >扣分情况</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${auditEntity.inspection_points}</label>
                            </div>
                            <label class="col-sm-2 control-label" >稽查结果</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${auditEntity.inspection_result}</label>
                            </div>
                        </div>

                    </fieldset>
                    <fieldset>
                        <div class="form-group">
                            <label class="col-sm-10 control-label" ></label>
                            <input type="button" value="返回" class="btn btn-success" onclick="javascript:history.back();"/></div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
</html>