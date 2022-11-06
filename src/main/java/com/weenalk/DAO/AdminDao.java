package com.weenalk.DAO;
import java.sql.*;


import com.weenalk.Modal.*;

public class AdminDao {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    
    
    public AdminDao(Connection con) {
		this.con = con;
	}
    
    public Admin adminLogin(String email, String password,String role) {
		Admin admin = null;
        try {
            query = "select * from admin where email=? and password=? and code=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            pst.setString(3, role);
            rs = pst.executeQuery();
            if(rs.next()){
            	admin = new Admin();
            	admin.setAddressid(rs.getInt("address_ID"));
            	admin.setTel(rs.getString("phone"));
            	admin.setEmail(rs.getString("email"));
            	admin.setPassword(rs.getString("password"));
            	admin.setPropic(rs.getString("propic"));
            	admin.setCoverpic(rs.getString("coverpic"));
            	admin.setAbout(rs.getString("about"));
            	admin.setUsername(rs.getString("username"));
            	admin.setRole(rs.getString("role"));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return admin;
    }
	
}
