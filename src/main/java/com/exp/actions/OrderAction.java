package com.exp.actions;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.exp.base.BaseAction;
import com.exp.entities.Basedata;
import com.exp.entities.Order;
import com.exp.util.AjaxUtil;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;

@Controller
@Scope("prototype")
public class OrderAction extends BaseAction<Order> {
	public String list() {
		resultList = orderService.findAll();
		return list;
	}

	public String delete() {
		orderService.delete(param);
		return tolist;
	}

	public String edit() {
		orderService.saveOrUpdate(model);
		;
		return tolist;
	}

	public void editAjax() throws Exception {
		Map map = new HashMap();
		Order o = orderService.getById(param);
		List plist = productService.findAll();
		List blist = basedataService.findAll();
		map.put("order", o);
		map.put("plist", plist);
		map.put("blist", blist);
		ObjectMapper m = new ObjectMapper();
		String json = m.writeValueAsString(map);
		AjaxUtil.renderText(json);
	}
}
