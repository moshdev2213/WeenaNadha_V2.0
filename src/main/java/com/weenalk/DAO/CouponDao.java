package com.weenalk.DAO;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.weenalk.Modal.Admin;
import com.weenalk.Modal.Coupon;
import com.weenalk.Modal.User;

public class CouponDao {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    
    
    public CouponDao(Connection con) {
		this.con = con;
	}
    
  //to get all coupons from the DB
  	public List<Coupon> getCoupon(){
  		List<Coupon> coupon = new ArrayList<Coupon>();
  		try {
  			query="select * from coupon";
  			pst=this.con.prepareStatement(query);
  			rs=pst.executeQuery();
  			while(rs.next()) {
  				Coupon cpn = new Coupon();
  				cpn.setCouponid(rs.getInt("cid"));
  				cpn.setCoupon(rs.getString("coupon"));
  				cpn.setValue(rs.getInt("value"));
  				
  				coupon.add(cpn);
  				
  			}
  		}catch(Exception e) {
  			e.printStackTrace();
  		}
  		return coupon;
  		
  	}
  	//get coupon y name
  	public Coupon getCoupon(String coupon) {
  		Coupon cpn = null;
        try {
            query = "select * from coupon where coupon=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, coupon);
            rs = pst.executeQuery();
            if(rs.next()){
            	cpn = new Coupon();
            	cpn.setCouponid(rs.getInt("cid"));
            	cpn.setCoupon(rs.getString("coupon"));
            	cpn.setValue(rs.getInt("value"));
            	
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return cpn;
    }
  //get coupon id name
  	public Coupon getCouponId(int id) {
  		Coupon cpn = null;
        try {
            query = "select * from coupon where cid=?";
            pst = this.con.prepareStatement(query);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            if(rs.next()){
            	cpn = new Coupon();
            	cpn.setCouponid(rs.getInt("cid"));
            	cpn.setCoupon(rs.getString("coupon"));
            	cpn.setValue(rs.getInt("value"));
            	
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return cpn;
    }
  	//updating coupons
  	public int updateCoupon(int id,int value,String name) {
  		int result=0;
  		try {
  			query="UPDATE coupon\r\n"
  					+ "SET coupon = ?, value= ?\r\n"
  					+ "WHERE cid = ?;";
  			pst = this.con.prepareStatement(query);
            pst.setString(1,name );
            pst.setInt(2, value);
            pst.setInt(3, id);
            result=pst.executeUpdate();
  		}catch(Exception e) {
  			e.printStackTrace();
  		}
  		return result;
  	}
  //updating coupons
  	public int InsertCoupon(int value,String name) {
  		int result=0;
  		try {
  			query="INSERT INTO coupon (coupon,value)\r\n"
  					+ "VALUES (?,?);";
  			pst = this.con.prepareStatement(query);
            pst.setString(1,name);
            pst.setInt(2, value);
            result=pst.executeUpdate();
  		}catch(Exception e) {
  			e.printStackTrace();
  		}
  		return result;
  	}
  //deleting coupons
  	public int deleteCoupon(String Id) {
  		int result=0;
  		try {
  			query="DELETE FROM coupon WHERE cid=?;";
  			pst = this.con.prepareStatement(query);
            pst.setString(1,Id);
      
            result=pst.executeUpdate();
  		}catch(Exception e) {
  			e.printStackTrace();
  		}
  		return result;
  	}
}
