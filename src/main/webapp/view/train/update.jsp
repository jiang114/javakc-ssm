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
			<div class="ibox float-e-margins">
                <form action="${path }/train/update.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>驾驶员基本信息</legend>
                        <input type="hidden2" value="${trainEntity.train_id}"  name="train_id">
                        <input type="hidden2" value="${trainEntity.driver_id}" name="driver_id">
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >培训名称</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="train_org_name" value="${trainEntity.train_org_name}">
                            </div>
                            <label class="col-sm-2 control-label" >驾驶员姓名</label>
                            <div class="col-sm-4">
                                <select name="basicEntity.driver_name">
                                    <c:set var="vs"></c:set>
                                    <c:forEach var="e" items="${list}" varStatus="v">
                                        <option ${trainEntity.basicEntity.driver_name==e.basicEntity.driver_name?"selected='selected'":""} >${e.basicEntity.driver_name }</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>           <div class="form-group">
                        <label class="col-sm-2 control-label" >培训机构</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="text" name="train_content_name" value="${trainEntity.train_content_name}">
                        </div>
                        <label class="col-sm-2 control-label" >培训地点</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="text" name="train_address" value="${trainEntity.train_address}">
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
                                <input class="form-control" type="text" name="train_start_time" value="${trainEntity.train_start_time}">
                            </div>
                            <label class="col-sm-2 control-label" >结束培训时间</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="train_end_time" value="${trainEntity.train_end_time}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >培训类型</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="train_type" value="${trainEntity.train_type}">
                            </div>
                            <label class="col-sm-2 control-label" >培训讲师</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="train_teacher" value="${trainEntity.train_teacher}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >培训内容</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="train_content" value="${trainEntity.train_content}">
                            </div>
                            <label class="col-sm-2 control-label" >培训结果</label>
                            <div class="col-sm-4">
                                <zhg:select codeTp="train_result" cls="form-control" name="train_result" value="${trainEntity.train_result}"/>
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