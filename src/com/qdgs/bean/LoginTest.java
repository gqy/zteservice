package com.qdgs.bean;

import java.io.Serializable;

public class LoginTest implements Serializable{
	private Integer id;
	private String name;
	private String pass;
	public LoginTest() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LoginTest(Integer id, String name, String pass) {
		super();
		this.id = id;
		this.name = name;
		this.pass = pass;
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
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "LoginTest [id=" + id + ", name=" + name + ", pass=" + pass
				+ "]";
	}
}
