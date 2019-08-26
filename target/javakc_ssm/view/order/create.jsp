<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>铅封订单新增</title>
		<%@ include file="../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/order/create.do" method="post" class="form-horizontal" role="form">
					<input name="order_id" id="order_id " value="${uuid}" type="hidden"/>
                    <fieldset>
                        <legend>订单基本信息</legend>
                       <div class="form-group">
                          <label class="col-sm-3 control-label" >生产厂家名称</label>
                          <div class="col-sm-9">
                             <input class="form-control" type="text" name="order_name">
                          </div>
                       </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" >生产厂家描述</label>
                            <div class="col-sm-9">
                                <input class="form-control" type="text" name="order_describe">
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
	<script type="text/javascript" src="./js/dictionary.js"></script>
</html>