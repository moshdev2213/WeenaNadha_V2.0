package com.weenalk.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class NewPasswordDao {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    public NewPasswordDao(Connection con) {
    	this.con = con;
    }
    public int passwordreset(String newPass,String email) {
		int value=0;
    	
		
		try {
			query="update users set password = ? where useremail = ?";
			pst = this.con.prepareStatement(query);
			
			pst.setString(1, newPass);
			pst.setString(2, email);
			
			value = pst.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	return value;
    }
    public String[] getTel(String email) {
    	String[] tel = {"",""};
    	try {
    		query = "select phone_no,username from users where useremail = ?";
    		pst = this.con.prepareStatement(query);
        	pst.setString(1, email);
        	rs = pst.executeQuery();
        	 if(rs.next()) {
        		 tel[0] = rs.getString("phone_no");
        		 tel[1] = rs.getString("username");
        	 }
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return tel;
    }
}
