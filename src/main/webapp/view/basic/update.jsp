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
                <form action="${path }/basic/update.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>驾驶员基本信息</legend>
                        <input type="hidden" name="driver_id" value="${basicEntity.driver_id}">
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >驾驶员编号</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="driver_card" value="${basicEntity.driver_card}">
                            </div>
                            <label class="col-sm-2 control-label" >驾驶员姓名</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="driver_name" value="${basicEntity.driver_name}">
                            </div>
                        </div>           <div class="form-group">
                        <label class="col-sm-2 control-label" >性别</label>
                        <div class="col-sm-4">
                            <zhg:select codeTp="sex" cls="form-control" name="driver_sex" value="${basicEntity.driver_sex}" />
                        </div>
                        <label class="col-sm-2 control-label" >在职状态</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="text" name="driver_type" value="${basicEntity.driver_type}">
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
                            <label class="col-sm-2 control-label" >驾驶证号</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="driver_license" value="${basicEntity.driver_license}">
                            </div>
                            <label class="col-sm-2 control-label" >技术等级</label>
                            <div class="col-sm-4">
                                <zhg:select codeTp="technical_level" cls="form-control" name="driver_industrial" value="${basicEntity.driver_industrial}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >家庭住址</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="driver_address" value="${basicEntity.driver_address}">
                            </div>
                            <label class="col-sm-2 control-label" >籍贯</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="driver_birthplace" value="${basicEntity.driver_birthplace}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" >上传照片</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="driver_picture" value="${basicEntity.driver_picture}">
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