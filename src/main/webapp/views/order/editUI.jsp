<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!-- Modal -->
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="modal fade" id="editOrderUI" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h3 class="modal-title" id="myModalLabel">
					<b>增加订单页面</b>
				</h3>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="editOrder" method="post"
					action="order_edit">
					<input type="hidden" id="id" name="id">
					<div class="form-group">
						<label for="name" class="col-sm-2 col-sm-offset-1 control-label">订单名</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="name"
								placeholder="Name" name="name">
						</div>
					</div>
					<div class="form-group">
						<label for="product"
							class="col-sm-2 col-sm-offset-1 control-label">产品</label>
						<div class="col-sm-6">
							<select id="product" name="product.id" class="form-control">
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="amount" class="col-sm-2 col-sm-offset-1 control-label">数量</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="amount"
								placeholder="Amount" name="amount">
						</div>
					</div>
					<div class="form-group">
						<label for="status" class="col-sm-2 col-sm-offset-1 control-label">订单状态</label>
						<div class="col-sm-6">
							<select id="status" name="status.id" class="form-control">
							</select>
						</div>
					</div>

				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				<a href="javascript:editOrder();" class="btn btn-primary">确定</a>
			</div>
		</div>
	</div>
</div>
<script>
	function checkAll(a) {
		var failsCount = 0;
		if ('all' == a || 'name' == a) {
			if ($('#name').val() == '') {
				tishi($('#name'), '订单名不能为空');
				failsCount += 1;
			} else {
				tishi($('#name'));
			}
		}
		return failsCount == 0 ? true : false;
	}
	function editOrder() {

		if (checkAll('all')) {

			$("#editOrder").submit();
		}
	}

	
</script>