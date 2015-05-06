function editOrderUI(param) {
			$
					.ajax({
						type : "POST",
						url : 'order_editAjax',
						data : {
							param : param
						},
						success : function(msg) {
							$("#product").empty();
							$("#product").append("<option value=''>--请选择--</option>");
							$("#status").empty();
							$("#status").append("<option value=''>--请选择--</option>");
							var obj = $.parseJSON(msg);
							
							if (param != null) {
								for ( var p in obj.plist) {
									$("#product").append("<option "
									+ (obj.order.product.id == obj.plist[p].id
											&& obj.order != null ? 'selected'
											: null)
									+ " value="
									+ obj.plist[p].id + ">"
									+ obj.plist[p].name
									+ "</option>");
								}
								for ( var b in obj.blist) {
									$("#status").append("<option "
									+ (obj.order.status.id == obj.blist[b].id
											&& obj.order != null ? 'selected'
											: null)
									+ " value="
									+ obj.blist[b].id + ">"
									+ obj.blist[b].name
									+ "</option>");
								}
								$("#id").val(obj.order.id);
								$("#name").val(obj.order.name);
								$("#amount").val(obj.order.amount);
							} else {
								for ( var p in obj.plist) {
									$("#product").append("<option value="
									+ obj.plist[p].id + ">"
									+ obj.plist[p].name
									+ "</option>");
								}
								for ( var b in obj.blist) {
									$("#status").append("<option value="
									+ obj.blist[b].id + ">"
									+ obj.blist[b].name
									+ "</option>");
								}
								$("#id").val("");
								$("#name").val("");
								$("#amount").val("");
							}

							$('#editOrderUI').modal('show');
						}
					});

		}