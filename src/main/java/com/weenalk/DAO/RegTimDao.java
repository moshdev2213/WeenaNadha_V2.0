package com.weenalk.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.weenalk.Modal.Product;
import com.weenalk.Modal.RegTim;

public class RegTimDao {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;

    public RegTimDao(Connection con) {
    	this.con = con;
    }
    
    //select all the data from the reg table
    public List<RegTim> getAllReg(){
    	List<RegTim> rg = new ArrayList<RegTim>();
    	
    	try {
    		query="SELECT * FROM regtime;";
			pst=this.con.prepareStatement(query);
			rs=pst.executeQuery();
			while(rs.next()) {
				RegTim row = new RegTim();
				 
				row.setEmail(rs.getString("uemail"));
				row.setTime(rs.getString("time"));
				row.setDay(rs.getString("day"));
				row.setMonth(rs.getString("month"));
				row.setDate(rs.getString("date"));
				rg.add(row);
			}
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
		return rg;
    	
    }
}
