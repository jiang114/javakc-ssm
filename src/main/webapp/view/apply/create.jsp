<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>采购添加页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">

			<div class="ibox float-e-margins">
				<form action="${path }/apply/create.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>采购基本信息</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" >申请数量</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="apply_count">
                          </div>
                          <label class="col-sm-2 control-label" >申请缘由</label>
                          <div class="col-sm-4">
                            <zhg:select codeTp="sex" cls="form-control" name="testSex" ></zhg:select>
                          </div>
                       </div>           <div class="form-group">
                          <label class="col-sm-2 control-label" >申请人手机号</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="apply_phone">
                          </div>
                          <label class="col-sm-2 control-label" >铅封使用方式</label>
                          <div class="col-sm-4">
                            <zhg:select codeTp="sex" cls="form-control" name="apply_way" ></zhg:select>
                          </div>
                       </div>
						<div class="form-group">

                          <label class="col-sm-2 control-label" >铅封类型</label>
                          <div class="col-sm-4">
                            <zhg:select codeTp="sex" cls="form-control" name="apply_type" ></zhg:select>
                          </div>
							<label class="col-sm-2 control-label" >内部/外部</label>
							<div class="col-sm-4">
								<zhg:select codeTp="sex" cls="form-control" name="apply_inside" ></zhg:select>
							</div>
                       </div>
						<div class="form-group">
                          <label class="col-sm-2 control-label" >邮政编码</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="apply_coding">
                          </div>
							<label class="col-sm-2 control-label" >邮政地址</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="apply_site">
							</div>
                       </div>
	                <div class="form-group">
                          <label class="col-sm-2 control-label" >申请单位</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="apply_unit">
                          </div>
							<label class="col-sm-2 control-label" >申请人</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="apply_name">
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