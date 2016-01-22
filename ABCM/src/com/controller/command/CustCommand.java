package com.controller.command;
//form의 데이터를 한꺼번에 가져오려고 만들었다.
public class CustCommand {
	private String id;
	private String pwd;
	private String name;
	public CustCommand(String id, String pwd, String name) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
	}
	public CustCommand(String id) {
		this.id = id;
	}
	public CustCommand() {
		
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
