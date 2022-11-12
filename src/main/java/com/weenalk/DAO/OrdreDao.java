package com.weenalk.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cn.techtutorial.model.Order;

public class OrdreDao {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;

    public OrdreDao(Connection con) {
    	this.con = con;
    }
    //takes model object of Order class as arguments 
    public boolean insertOrder(Order model) {
    	boolean result=false;
    	
    	try {
    		query="Insert into orders (p_id,u_id,o_quantity,o_date,o_time,o_day,o_mnth) values(?,?,?,?,?,?,?)";
    		pst=this.con.prepareStatement(query);
    		//
    		pst.setInt(1,model.getId());
    		pst.setInt(2,model.getUid());
    		pst.setInt(3,model.getQunatity());
    		pst.setString(4,model.getDate());
    		pst.setString(5,model.getTime());
    		pst.setString(6,model.getday());
    		pst.setString(7,model.getMonth());
    		pst.executeUpdate();
    		result = true;
    	
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	return result;
    }
    
}
