package com.exp.entities;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * 订单实体类
 * 
 * @author Administrator
 * @version 创建时间：2015年5月4日 下午3:03:20
 */
public class Order implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -5667023524551060871L;
	private Integer id;
	private String name;
	
	private Basedata status;//状态
	private double amount;//数量
	private double price;
	private Product product;//产品
	
	
	private String deleteFlag;// 删除
	private String activeFlag;// 激活位
	private Date createTime;
	private Date updateTime;
	private User createUser;
	private User updateUser;
	
	
	
	@Override
	public String toString() {
		return "Order [id=" + id + ", name=" + name + ", status=" + status
				+ ", amount=" + amount + ", price=" + price + ", product="
				+ product + ", deleteFlag=" + deleteFlag + ", activeFlag="
				+ activeFlag + ", createTime=" + createTime + ", updateTime="
				+ updateTime + ", createUser=" + createUser + ", updateUser="
				+ updateUser + "]";
	}
	public Order() {
		super();
	}
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
	public Basedata getStatus() {
		return status;
	}
	public void setStatus(Basedata status) {
		this.status = status;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public double getPrice() {
		return amount*product.getPrice();
	}
	public void setPrice(double price) {
		this.price = amount*product.getPrice();
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public String getDeleteFlag() {
		return deleteFlag;
	}
	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	public String getActiveFlag() {
		return activeFlag;
	}
	public void setActiveFlag(String activeFlag) {
		this.activeFlag = activeFlag;
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
	
	
	

}
