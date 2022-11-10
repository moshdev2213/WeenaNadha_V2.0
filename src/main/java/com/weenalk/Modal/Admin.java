package com.weenalk.Modal;

import com.weenalk.interfaces.roleInterface;

public class Admin implements roleInterface{
	private int addressid;
	private String tel;
	private String username;
	private String email;
	private String password;
	private String propic;
	private String coverpic;
	private String role;
	private String about;
	private String code;
	
	public Admin() {
		
	}
	
	public Admin(int addressid, String tel, String username, String email, String password, String propic, String coverpic,
			String role, String about,String code) {
		
		this.addressid = addressid;
		this.tel = tel;
		this.username = username;
		this.email = email;
		this.password = password;
		this.propic = propic;
		this.coverpic = coverpic;
		this.role = role;
		this.about = about;
		this.code = code;
	}

	@Override
	public void displayRole() {
		System.out.print("Welcome Admin : "+this.email);
		
	}
	
	public int getAddressid() {
		return addressid;
	}

	public void setAddressid(int addressid) {
		this.addressid = addressid;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPropic() {
		return propic;
	}

	public void setPropic(String propic) {
		this.propic = propic;
	}

	public String getCoverpic() {
		return coverpic;
	}

	public void setCoverpic(String coverpic) {
		this.coverpic = coverpic;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	
	

}
