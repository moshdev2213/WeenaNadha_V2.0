package com.weenalk.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AddImageDAO {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    
    
    public AddImageDAO(Connection con) {
		this.con = con;
	}
    public int imgup(String propic,String covpic,String email) {
    	int result=0;
    	String popicloc="images/pro/"+propic;
    	String covpicloc="images/pro/"+covpic;
    	try {
    		query = "insert into users(propic,coverpic,useremail) values('"+popicloc+"','"+covpicloc+"','"+email+"')	";
    		pst = this.con.prepareStatement(query);
             result=pst.executeUpdate(query);
             
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	return result ;
    }
}
