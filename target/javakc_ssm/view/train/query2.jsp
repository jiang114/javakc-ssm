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
                            <label class="col-sm-2 control-label" >培训名称</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${trainEntity.train_org_name}</label>
                            </div>
                            <label class="col-sm-2 control-label" >驾驶员姓名</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${trainEntity.basicEntity.driver_name }</label>
                            </div>
                        </div>           <div class="form-group">
                        <label class="col-sm-2 control-label" >培训机构</label>
                        <div class="col-sm-4">
                            <label class="control-label" >${trainEntity.train_content_name}</label>
                        </div>
                        <label class="col-sm-2 control-label" >培训地点</label>
                        <div class="col-sm-4">
                             <label class="control-label" >${trainEntity.train_address}</label>
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
                            <label class="col-sm-2 control-label" >开始培训时间</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${trainEntity.train_start_time}</label>
                            </div>
                            <label class="col-sm-2 control-label" >结束培训时间</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${trainEntity.train_end_time}</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >培训类型</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${trainEntity.train_type}</label>
                            </div>
                            <label class="col-sm-2 control-label" >培训讲师</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${trainEntity.train_teacher}</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >培训内容</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${trainEntity.train_content}</label>
                            </div>
                            <label class="col-sm-2 control-label" >培训结果</label>
                            <div class="col-sm-4">
                                <label class="control-label" >${trainEntity.train_result==1?'完成':'未完成'}</label>
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