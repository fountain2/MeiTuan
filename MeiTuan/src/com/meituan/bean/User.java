package com.meituan.bean;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable{
	private int id;
	private String name;
	private String password;
	private int status;
	private Date logindate;
	
	public User(){};
	
	public User(String name, String password) {
		this.name = name;
		this.password = password;
	}
	
	public User(int id, String name, String password, int status,Date logindate) {
		this.id = id;
		this.name = name;
		this.password = password;
		this.status = status;
		this.logindate=logindate;
	}
	
	public User(int id, String name, String password, int status) {
		this.id = id;
		this.name = name;
		this.password = password;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	
	
	public Date getLogindate() {
		return logindate;
	}

	public void setLogindate(Date logindate) {
		this.logindate = logindate;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password + ", status=" + status + ", logindate="
				+ logindate + "]";
	}

}
