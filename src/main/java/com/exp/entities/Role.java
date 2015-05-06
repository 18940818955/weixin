package com.exp.entities;

import java.io.Serializable;
import java.util.Set;

public class Role implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 926586204091972028L;
	private Integer id;
	private String name;
	private String description;
	private Set<User> users;

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
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

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

	@Override
	public String toString() {
		return "Role [id=" + id + ", name=" + name + ", users=" + users + "]";
	}

	public Role() {
		super();
	}


	public Role(String name, String description) {
		super();
		this.name = name;
		this.description = description;
	}
	

}
