package com.weenalk.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RemoveDao {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    public RemoveDao(Connection con) {
		this.con = con;
	}
    
    public int removeUser(String email) {
    	int result=0;
    	try {
//    		query="DELETE FROM payment WHERE useremail=?;";
//    		pst = this.con.prepareStatement(query);
//			pst.setString(1, email);
//			pst.executeUpdate();
//    		
    		query="DELETE FROM review WHERE useremail=?;";
    		pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			pst.executeUpdate();
			
		
			
    		query="DELETE FROM users WHERE useremail=?;";
    		pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			pst.executeUpdate();
			result = 1;
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	return result;
    }
}
