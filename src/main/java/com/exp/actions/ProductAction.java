package com.exp.actions;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.exp.base.BaseAction;
import com.exp.entities.Product;
import com.exp.util.AjaxUtil;

@Controller
@Scope("prototype")
public class ProductAction extends BaseAction<Product>{
	public String list(){
		resultList = productService.findAll();
		return list;
	}
	public String delete(){
		productService.delete(param);
		return tolist;
	}
	public String edit(){
		productService.saveOrUpdate(model);;
		return tolist;
	}
	public void editAjax(){
		Product p = productService.getById(param);
		AjaxUtil.renderText(p);
	}
}
