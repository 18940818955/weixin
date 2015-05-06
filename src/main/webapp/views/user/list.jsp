<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/common/top.jsp"%>
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					用户列表
					<div class="pull-right" style="margin-top: -7px;">
						<a href="javascript:editUserUI();" class="btn btn-success">新建用户</a>
						<%@include file="/views/user/editUI.jsp"%>
					</div>
				</div>
				<div class="panel-body ">
					<s:if test='resultList.size()!=0'>
					<div class="table-responsive">
						<table
							class="table table-hover table-bordered table-striped table-condensed ">
							<thead>
								<tr class="">
									<th class="">产品号</th>
									<th class="">姓名</th>
									<th class="">帐号</th>
									<th class="">手机</th>
									<th class="">邮箱</th>
									<th class="">微信号</th>
									<th class="">权限</th>
									<th class="">操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="resultList" var="list">
									<tr class="">
										<td class=""><s:property value="id" /></td>
										<td class=""><s:property value="name" /></td>
										<td class=""><s:property value="userid" /></td>
										<td class=""><s:property value="mobile" /></td>
										<td class=""><s:property value="email" /></td>
										<td class=""><s:property value="weixinid" /></td>
										<td class="">
											<s:iterator value="#list.roles" var="item">
												<s:property value="#item.description"/>
											</s:iterator>
										</td>
										<td class=""><a
											href="javascript:editUserUI(<s:property value="id" />)"
											class="btn btn-info"><span
												class="glyphicon glyphicon-cog"></span></a> <a
											href="user_delete?param=<s:property value="id" />" onclick="return confirm('确定删除${obj.name}吗？')"
											class="btn btn-danger"><span
												class="glyphicon glyphicon-remove"></span></a></td>
									</tr>
								</s:iterator>
							</tbody>
						</table></div>
					</s:if>
					<s:else>没有数据</s:else>
				</div>

			</div>
		</div>
	</div>
	<%@ include file="/common/footer.jsp"%>
	<script>
		function editUserUI(param) {
			if (param != null) {
				$.ajax({
					type : "POST",
					url : 'user_editAjax?param=' + param,
					data : '',
					success : function(msg) {
						var obj = $.parseJSON(msg);
						$("#id").val(obj.id);
						$("#name").val(obj.name);
						$("#price").val(obj.price);
						$("#style").val(obj.style);
						$("#unit").val(obj.unit);
						$("#reserve").val(obj.reserve);
						$('#editUserUI').modal('show');
					}
				});
			} else {
				$("#id").val("");
				$("#name").val("");
				$("#price").val("");
				$("#style").val("");
				$("#unit").val("");
				$("#reserve").val("");
				$('#editUserUI').modal('show');
			}
		}
	</script>
</body>
</html>