package com.weenalk.DAO;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.weenalk.Modal.Admin;
import com.weenalk.Modal.Coupon;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
  				cpn.setValue(rs.getString("value"));
  				
  				coupon.add(cpn);
  				
  			}
  		}catch(Exception e) {
  			e.printStackTrace();
  		}
  		return coupon;
  		
  	}
}
