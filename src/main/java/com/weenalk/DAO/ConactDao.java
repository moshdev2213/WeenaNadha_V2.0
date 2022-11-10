package com.weenalk.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConactDao {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    public ConactDao(Connection con){
    	this.con=con;
    }
    public int Contactdetails(String Usermail,String fname,String lname,String email,String subject,String message,String date,String time,String tel) {
		int result = 0;
		
		

		try {
			query = "Insert into contact (useremail,fname,lname,email,subject,message,date,time,tel) values(?,?,?,?,?,?,?,?,?)";
			pst = this.con.prepareStatement(query);

			pst.setString(1, Usermail);
			pst.setString(2, fname);
			pst.setString(3, lname);
			pst.setString(4, email);
			pst.setString(5, subject);
			pst.setString(6, message);
			pst.setString(7, date);
			pst.setString(8, time);
			pst.setString(9, tel);
			pst.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
    	return result;
    	
    }

}
