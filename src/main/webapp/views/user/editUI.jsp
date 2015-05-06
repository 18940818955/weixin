<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!-- Modal -->
<div class="modal fade" id="editProductUI" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h3 class="modal-title" id="myModalLabel">
					<b>增加产品页面</b>
				</h3>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="editProduct" method="post"
					action="product_edit">
					<input type="hidden" name="id" id="id">
					<div class="form-group">
						<label for="name" class="col-sm-2 col-sm-offset-1 control-label">产品名称</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="name"
								placeholder="Name" name="name">
						</div>
					</div>
					<div class="form-group">
						<label for="price" class="col-sm-2 col-sm-offset-1 control-label">单价</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="price"
								placeholder="Price" name="price">
						</div>
					</div>
					<div class="form-group">
						<label for="style" class="col-sm-2 col-sm-offset-1 control-label">型号</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="style"
								placeholder="Style" name="style">
						</div>
					</div>
					<div class="form-group">
						<label for="unit" class="col-sm-2 col-sm-offset-1 control-label">单位</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="unit"
								placeholder="Unit" name="unit">
						</div>
					</div>
					<div class="form-group">
						<label for="reserve" class="col-sm-2 col-sm-offset-1 control-label">库存</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="reserve"
								placeholder="Reserve" name="reserve">
						</div>
					</div>

				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				<a href="javascript:editProduct();" class="btn btn-primary">确定</a>
			</div>
		</div>
	</div>
</div>
<script>
	function checkAll(a) {
		var failsCount = 0;
		if ('all' == a || 'price' == a) {
			if ($('#price').val() == '') {
				tishi($('#price'), '单价不能为空');
				failsCount += 1;
			} else if (trim($('#price').val()).match(/^([0-9]*\.?[0-9]+|[0-9]+\.?[0-9]*)$/) == null) {
				tishi($('#price'), '单价不能为非数字');
				failsCount += 1;
			} else {
				tishi($('#price'));
			}
		}
		if ('all' == a || 'reserve' == a) {
			if ($('#reserve').val() == '') {
				tishi($('#reserve'), '单价不能为空');
				failsCount += 1;
			} else if (trim($('#reserve').val()).match(/^([0-9]*\.?[0-9]+|[0-9]+\.?[0-9]*)$/) == null) {
				
				tishi($('#reserve'), '库存不能为非数字');
				failsCount += 1;
			} else {
				tishi($('#reserve'));
			}
		}
		if ('all' == a || 'name' == a) {
			if ($('#name').val() == '') {
				tishi($('#name'), '姓名不能为空');
				failsCount += 1;
			} else {
				tishi($('#name'));
			}
		}
		return failsCount == 0 ? true : false;
	}
	function editProduct() {
		
		if (checkAll('all')) {
			
			$("#editProduct").submit();
		}
	}
</script>