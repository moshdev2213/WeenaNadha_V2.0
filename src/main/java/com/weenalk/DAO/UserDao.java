package com.weenalk.DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.weenalk.Modal.*;

public class UserDao {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;

	public UserDao(Connection con) {
		this.con = con;
	}
	
	public User userLogin(String email, String password) {
		User user = null;
        try {
            query = "select * from users where useremail=? and password=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            rs = pst.executeQuery();
            if(rs.next()){
            	user = new User();
            	user.setAddressid(rs.getInt("address_ID"));
            	user.setTel(rs.getString("phone_no"));
            	user.setEmail(rs.getString("useremail"));
            	user.setPassword(rs.getString("password"));
            	user.setPropic(rs.getString("propic"));
            	user.setCoverpic(rs.getString("coverpic"));
            	user.setAbout(rs.getString("about"));
            	user.setFname(rs.getString("fname"));
            	user.setMname(rs.getString("mname"));
            	user.setLname(rs.getString("lname"));
            	user.setUsername(rs.getString("username"));
            	user.setCompany(rs.getString("company"));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return user;
    }
	public boolean userRegister(String fname,String lname,String mname,String username,String tel,String company,String password, String email,String country) {
		boolean result = false;
		try {
			query = "Insert into users (useremail,password,username,phone_no,company,fname,mname,lname) values(?,?,?,?,?,?,?,?)";
			pst = this.con.prepareStatement(query);

			pst.setString(1, email);
			pst.setString(2, password);
			pst.setString(3, username);
			pst.setString(4, tel);
			pst.setString(5, company);
			pst.setString(6, fname);
			pst.setString(7, mname);
			pst.setString(8, lname);

			pst.executeUpdate();
			result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
		
	}
	//to get all users from the DB
	public List<User> getUser(){
		List<User> user = new ArrayList<User>();
		try {
			query="select * from users";
			pst=this.con.prepareStatement(query);
			rs=pst.executeQuery();
			while(rs.next()) {
				User usr = new User();
				usr.setAddressid(rs.getInt("address_ID"));
				usr.setTel(rs.getString("phone_no"));
				usr.setEmail(rs.getString("useremail"));
				usr.setPassword(rs.getString("password"));
				usr.setPropic(rs.getString("propic"));
				usr.setCoverpic(rs.getString("coverpic"));
				usr.setAbout(rs.getString("about"));
				usr.setFname(rs.getString("fname"));
				usr.setMname(rs.getString("mname"));
				usr.setLname(rs.getString("lname"));
				usr.setUsername(rs.getString("username"));
				usr.setCompany(rs.getString("company"));
				
				user.add(usr);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return user;
		
	}
}