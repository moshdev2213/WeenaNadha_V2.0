package com.weenalk.Modal;

public class LogTime extends RegTime {
	
	private String role;

	public LogTime() {
	}

	public LogTime(int id, String uemail, String time, String day, String month, String date,String role) {
		super();
		this.role = role;
	}

	public LogTime(String uemail, String time, String day, String month, String date,String role) {

		super();
		this.role = role;
	}

	
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

}
