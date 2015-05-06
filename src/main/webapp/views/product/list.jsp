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
					产品列表
					<div class="pull-right" style="margin-top: -7px;">
						<a href="javascript:editProductUI();" class="btn btn-success">增加产品</a>
						<%@include file="/views/product/editUI.jsp"%>
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
									<th class="">产品名称</th>
									<th class="">单价</th>
									<th class="">型号</th>
									<th class="">单位</th>
									<th class="">库存</th>
									<th class="">操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="resultList">
									<tr class="">
										<td class=""><s:property value="id" /></td>
										<td class=""><s:property value="name" /></td>
										<td class=""><s:property value="price" /></td>
										<td class=""><s:property value="style" /></td>
										<td class=""><s:property value="unit" /></td>
										<td class=""><s:property value="reserve" /></td>
										<td class=""><a
											href="javascript:editProductUI(<s:property value="id" />)"
											class="btn btn-info"><span
												class="glyphicon glyphicon-cog"></span></a> <a
											href="product_delete?param=<s:property value="id" />" onclick="return confirm('确定删除${obj.name}吗？')"
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
		function editProductUI(param) {
			if (param != null) {
				$.ajax({
					type : "POST",
					url : 'product_editAjax?param=' + param,
					data : '',
					success : function(msg) {
						var obj = $.parseJSON(msg);
						$("#id").val(obj.id);
						$("#name").val(obj.name);
						$("#price").val(obj.price);
						$("#style").val(obj.style);
						$("#unit").val(obj.unit);
						$("#reserve").val(obj.reserve);
						$('#editProductUI').modal('show');
					}
				});
			} else {
				$("#id").val("");
				$("#name").val("");
				$("#price").val("");
				$("#style").val("");
				$("#unit").val("");
				$("#reserve").val("");
				$('#editProductUI').modal('show');
			}
		}
	</script>
</body>
</html>