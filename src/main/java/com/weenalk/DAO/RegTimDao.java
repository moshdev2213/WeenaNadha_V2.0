package com.weenalk.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.weenalk.Modal.Coupon;
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
    //delete reg
    public int deletereg(String mail) {
  		int result=0;
  		try {
  			query="DELETE FROM regtime WHERE uemail=?;";
  			pst = this.con.prepareStatement(query);
            pst.setString(1,mail);
      
            result=pst.executeUpdate();
  		}catch(Exception e) {
  			e.printStackTrace();
  		}
  		return result;
  	}
    //Insert coupon
    public int Insertreg(String time,String day,String month,String date) {
  		int result=0;
  		try {
  			query="INSERT INTO regtime (time,day,month,date)\r\n"
  					+ "VALUES (?,?,?,?);";
  			pst = this.con.prepareStatement(query);
            pst.setString(1,time);
            pst.setString(2,day);
            pst.setString(3,month);
            pst.setString(4,date);
            result=pst.executeUpdate();
  		}catch(Exception e) {
  			e.printStackTrace();
  		}
  		return result;
  	}
    //update coupon
    public int updatereg(String mail,String time,String day,String month,String date) {
  		int result=0;
  		try {
  			query="UPDATE regtime\r\n"
  					+ "SET time = ?, day= ?, month= ?, date= ?\r\n"
  					+ "WHERE uemail = ?;";
  			pst = this.con.prepareStatement(query);
            pst.setString(1,time );
            pst.setString(2,day );
            pst.setString(3,month );
            pst.setString(4,date );
            pst.setString(5,mail );
            result=pst.executeUpdate();
  		}catch(Exception e) {
  			e.printStackTrace();
  		}
  		return result;
  	}
  //get coupon y name
  	public RegTim getregs(String mail) {
  		RegTim rg = null;
        try {
            query = "select * from regtime where uemail=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, mail);
            rs = pst.executeQuery();
            if(rs.next()){
            	rg = new RegTim();
            	rg.setDate(rs.getString("date"));
            	rg.setDay(rs.getString("day"));
            	rg.setMonth(rs.getString("month"));
            	rg.setTime(rs.getString("time"));
            	
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return rg;
    }
}
