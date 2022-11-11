package com.weenalk.Modal;

public class Address {
	private String pID;
	private String dID;
	private String street;
	private String postalcode;
	private String city;
	
	public Address()
	{
		
	}
	public Address(String pID, String dID, String street, String postalcode, String city) {
		super();
		this.pID = pID;
		this.dID = dID;
		this.street = street;
		this.postalcode = postalcode;
		this.city = city;
	}
	public String getpID() {
		return pID;
	}
	public void setpID(String pID) {
		this.pID = pID;
	}
	public String getdID() {
		return dID;
	}
	public void setdID(String dID) {
		this.dID = dID;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getPostalcode() {
		return postalcode;
	}
	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	
}
