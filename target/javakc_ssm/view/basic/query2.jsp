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
                            <label class="col-sm-2 control-label" >驾驶员编号:</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${basicEntity.driver_card}</label>
                            </div>
                            <label class="col-sm-2 control-label" >驾驶员姓名:</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${basicEntity.driver_name}</label>
                            </div>
                        </div>
                        <div class="form-group">
                        <label class="col-sm-2 control-label" >性别:</label>
                        <div class="col-sm-4">
                            <label class="control-label" >${basicEntity.driver_sex==1?'男':basicEntity.driver_sex==2?'女':'保密'}</label>
                        </div>
                        <label class="col-sm-2 control-label" >在职状态:</label>
                        <div class="col-sm-4">
                            <label class="control-label" >${basicEntity.driver_type}</label>
                        </div>
                    </div>
                        <%--						<div class="form-group">--%>

                        <%--                          <label class="col-sm-2 control-label" >所属公司</label>--%>
                        <%--                          <div class="col-sm-4">--%>
                        <%--                              <input class="form-control" type="text" name="">--%>
                        <%--                          </div>--%>
                        <%--							<label class="col-sm-2 control-label" >所属车队</label>--%>
                        <%--							<div class="col-sm-4">--%>
                        <%--                                <input class="form-control" type="text" name="">--%>
                        <%--							</div>--%>
                        <%--                       </div>--%>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >驾驶证号:</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${basicEntity.driver_license}</label>
                            </div>
                            <label class="col-sm-2 control-label" >技术等级:</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${basicEntity.driver_industrial==1?'A本':basicEntity.driver_industrial==2?'B本':'C本'}</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >家庭住址:</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${basicEntity.driver_address}</label>
                            </div>
                            <label class="col-sm-2 control-label" >籍贯:</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${basicEntity.driver_birthplace}</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >照片:</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${basicEntity.driver_picture}</label>0
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
	<script type="text/javascript" src="./js/apply.js"></script>
</html>