package com.weenalk.Modal;

public class User extends Admin {
	private String fname;
	private String mname;
	private String lname;
	private String company;
	
	
	public User() {
		super();
	}
	
	public User(String fname, String mname, String lname, String company) {
		super();
		this.fname = fname;
		this.mname = mname;
		this.lname = lname;
		this.company = company;
	}
	
	//getters and setters initialized here
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	
	
	
	
}