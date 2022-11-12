package com.weenalk.Modal;

public class Order extends Product{
	private int orderId;
	private String umail;
	private int qunatity;
	private String date;
	private String time;
	private String day;
	private String month;
	
	public Order() {
	}
	
	public Order(int orderId, String umail, int qunatity, String date, String time, String day, String month) {
		this.orderId = orderId;
		this.umail = umail;
		this.qunatity = qunatity;
		this.date = date;
		this.time = time;
		this.day = day;
		this.month = month;
	}

	public Order(String umail, int qunatity, String date,String time,String day, String month) {
		this.umail = umail;
		this.qunatity = qunatity;
		this.date = date;
		this.time=time;
		this.day = day;
		this.month = month;
	}

	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	
	public String getUmail() {
		return umail;
	}

	public void setUmail(String umail) {
		this.umail = umail;
	}

	public int getQunatity() {
		return qunatity;
	}
	public void setQunatity(int qunatity) {
		this.qunatity = qunatity;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getday() {
		return day;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
}