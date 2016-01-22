package com.service.vo;

public class Cust {
	private String id;
	private String pwd;
	private String name;
	public Cust(String id, String pwd, String name) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
	}
	public Cust(String id) {
		this.id = id;
	}
	public Cust() {
		
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "Cust [id=" + id + ", pwd=" + pwd + ", name=" + name + "]";
	}
	
	
}
