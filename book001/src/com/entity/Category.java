package com.entity;

import java.io.Serializable;

/**
 * @author chx
 */
public class Category implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private int id;
	private String name;
	
	public Category() {
		super();
	}
	public int getId() {
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
}
