package com.weenalk.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.weenalk.Modal.OrderFKM;

public class Orderfk {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;

    public Orderfk(Connection con) {
    	this.con = con;
    }
    
    //to get all coupons from the DB
  	public List<OrderFKM> getOrders(){
  		List<OrderFKM> order = new ArrayList<OrderFKM>();
  		try {
  			query="select * from orders";
  			pst=this.con.prepareStatement(query);
  			rs=pst.executeQuery();
  			while(rs.next()) {
  				OrderFKM cpn = new OrderFKM();
  				cpn.setOrderId(rs.getString("order_ID"));
  				cpn.setUmail(rs.getString("useremail"));
  				cpn.setQunatity(rs.getString("quantity"));
  				cpn.setAmount(rs.getString("amount"));
  				cpn.setPid(rs.getString("product_ID"));
  				cpn.setPayid(rs.getString("payment_ID"));
  				order.add(cpn);
  				
  			}
  		}catch(Exception e) {
  			e.printStackTrace();
  		}
  		return order;
  		
  	}
  //get coupon y name
  	public OrderFKM getorderbymail(String email) {
  		OrderFKM cpn = null;
        try {
            query = "select * from coupon where useremail=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            rs = pst.executeQuery();
            if(rs.next()){
            	cpn = new OrderFKM();
            	cpn.setOrderId(rs.getString("order_ID"));
  				cpn.setUmail(rs.getString("useremail"));
  				cpn.setQunatity(rs.getString("quantity"));
  				cpn.setAmount(rs.getString("amount"));
  				cpn.setPid(rs.getString("product_ID"));
  				cpn.setPayid(rs.getString("payment_ID"));
            	
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return cpn;
    }
  //updating coupons
  	public int updateOrder(String quantity,String amount,String product_ID,String payment_ID) {
  		int result=0;
  		try {
  			query="UPDATE orders\r\n"
  					+ "SET quantity = ?, amount= ?, product_ID= ?, payment_ID= ?\r\n"
  					+ "WHERE useremail = ?;";
  			pst = this.con.prepareStatement(query);
  			 pst.setString(1,quantity);
             pst.setString(2, amount);
             pst.setString(3,product_ID);
             pst.setString(4, payment_ID);
            result=pst.executeUpdate();
  		}catch(Exception e) {
  			e.printStackTrace();
  		}
  		return result;
  	}
  //Inserting coupons
  	public int InsertOrder(String quantity,String amount,String product_ID,String payment_ID) {
  		int result=0;
  		try {
  			query="INSERT INTO orders (quantity, amount ,product_ID,payment_ID)\r\n"
  					+ "VALUES (?,?,?,?);";
  			pst = this.con.prepareStatement(query);
            pst.setString(1,quantity);
            pst.setString(2, amount);
            pst.setString(3,product_ID);
            pst.setString(4, payment_ID);
            result=pst.executeUpdate();
  		}catch(Exception e) {
  			e.printStackTrace();
  		}
  		return result;
  	}
  //deleting coupons
  	public int deleteOrder(String mail) {
  		int result=0;
  		try {
  			query="DELETE FROM orders WHERE useremail=?;";
  			pst = this.con.prepareStatement(query);
            pst.setString(1,mail);
      
            result=pst.executeUpdate();
  		}catch(Exception e) {
  			e.printStackTrace();
  		}
  		return result;
  	}
}
