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
					订单列表
					<div class="pull-right" style="margin-top: -7px;">
						<a href="javascript:editOrderUI();" class="btn btn-success">增加订单</a>
						<%@include file="/views/order/editUI.jsp"%>
					</div>
				</div>
				<div class="panel-body ">
					<s:if test='resultList.size()!=0'>
						<table
							class="table table-hover table-bordered table-striped table-condensed ">
							<thead>
								<tr class="">
									<th class="">订单号</th>
									<th class="">订单名称</th>
									<th class="">产品</th>
									<th class="">产品单价</th>
									<th class="">产品单位</th>
									<th class="">产品数量</th>
									<th class="">总价</th>
									<th class="">订单状态</th>
									<th class="">操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="resultList">
									<tr class="">
										<td class=""><s:property value="id" /></td>
										<td class=""><s:property value="name" /></td>
										<td class=""><s:property value="product.name" /></td>
										<td class=""><s:property value="product.price" /></td>
										<td class=""><s:property value="product.unit" /></td>
										<td class=""><s:property value="amount" /></td>
										<td class=""><s:property value="price" /></td>
										<td class=""><s:property value="status.name" /></td>
										<td class=""><a
											href="javascript:editOrderUI(<s:property value="id" />)"
											class="btn btn-info"><span
												class="glyphicon glyphicon-cog"></span></a> <a
											href="order_delete?param=<s:property value="id" />"
											onclick="return confirm('确定删除${obj.name}吗？')"
											class="btn btn-danger"><span
												class="glyphicon glyphicon-remove"></span></a></td>
									</tr>
								</s:iterator>
							</tbody>
						</table>
					</s:if>
					<s:else>没有数据</s:else>
				</div>

			</div>
		</div>
	</div>
	<%@ include file="/common/footer.jsp"%>
	<script src="js/editOrder.js"></script>
</body>
</html>