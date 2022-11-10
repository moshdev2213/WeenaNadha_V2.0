package com.weenalk.Modal;

public class Coupon {
	private int couponid;
	private String coupon;
	private String value;
	
	public Coupon(){
		
	}
	public Coupon(int couponid, String coupon, String value) {
		super();
		this.couponid = couponid;
		this.coupon = coupon;
		this.value = value;
	}
	public int getCouponid() {
		return couponid;
	}
	public void setCouponid(int couponid) {
		this.couponid = couponid;
	}
	public String getCoupon() {
		return coupon;
	}
	public void setCoupon(String coupon) {
		this.coupon = coupon;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	
	
}
