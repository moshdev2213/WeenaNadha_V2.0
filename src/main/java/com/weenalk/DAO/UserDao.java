package com.weenalk.DAO;

import java.sql.*;

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
}