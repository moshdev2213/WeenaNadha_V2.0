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
}
