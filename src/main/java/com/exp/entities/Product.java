package com.exp.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * 产品实体类
 * 
 * @author Administrator
 * @version 创建时间：2015年5月4日 下午3:03:04
 */
public class Product implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 5899052450104246287L;
	private Integer id;
	private String name;

	private double price;// 单价
	private String style;// 型号
	private String unit;// 单位
	private double reserve;// 库存
	@JsonIgnore  
	private Set<Order> orders;

	private String deleteFlag;// 删除
	private Date createTime;
	private Date updateTime;
	private User createUser;
	private User updateUser;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public double getReserve() {
		return reserve;
	}

	public void setReserve(double reserve) {
		this.reserve = reserve;
	}

	public Set<Order> getOrders() {
		return orders;
	}

	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}

	public String getDeleteFlag() {
		return deleteFlag;
	}

	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public User getCreateUser() {
		return createUser;
	}

	public void setCreateUser(User createUser) {
		this.createUser = createUser;
	}

	public User getUpdateUser() {
		return updateUser;
	}

	public void setUpdateUser(User updateUser) {
		this.updateUser = updateUser;
	}

	public Product() {
		super();
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", price=" + price
				+ ", style=" + style + ", unit=" + unit + ", reserve="
				+ reserve + ", orders=" + orders + ", deleteFlag=" + deleteFlag
				+ ", createTime=" + createTime + ", updateTime=" + updateTime
				+ ", createUser=" + createUser + ", updateUser=" + updateUser
				+ "]";
	}

}
