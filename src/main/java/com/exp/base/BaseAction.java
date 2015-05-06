package com.exp.base;

import java.lang.reflect.ParameterizedType;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.exp.service.BasedataService;
import com.exp.service.OrderService;
import com.exp.service.ProductService;
import com.exp.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BaseAction<T> extends ActionSupport implements ModelDriven<T> {
	// =============== ModelDriven的支持 ==================

	protected T model;

	public BaseAction() {
		try {
			// 通过反射获取model的真实类型
			ParameterizedType pt = (ParameterizedType) this.getClass()
					.getGenericSuperclass();
			Class<T> clazz = (Class<T>) pt.getActualTypeArguments()[0];
			// 通过反射创建model的实例
			model = clazz.newInstance();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public T getModel() {
		return model;
	}

	// =================service引入====================
	@Resource
	protected ProductService productService;
	@Resource
	protected OrderService orderService;
	@Resource
	protected BasedataService basedataService;
	@Resource
	protected UserService userService;
	protected Integer param;
	protected Integer parentid;

	protected static final String list = "list";
	protected static final String editUI = "editUI";
	protected static final String tolist = "tolist";
	protected static final String json = "json";
	protected List resultList;
	protected Map resultMap;
	protected Object resultBean;

	public Object getResultBean() {
		return resultBean;
	}

	public void setResultBean(Object resultBean) {
		this.resultBean = resultBean;
	}

	public Map getResultMap() {
		return resultMap;
	}

	public void setResultMap(Map resultMap) {
		this.resultMap = resultMap;
	}

	public List getResultList() {
		return resultList;
	}

	public void setResultList(List resultList) {
		this.resultList = resultList;
	}

	public Integer getParam() {
		return param;
	}

	public void setParam(Integer param) {
		this.param = param;
	}

	public Integer getParentid() {
		return parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

}
