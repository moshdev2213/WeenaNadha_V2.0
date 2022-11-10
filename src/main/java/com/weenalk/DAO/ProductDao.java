package com.weenalk.DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.swing.text.html.HTMLDocument.HTMLReader.PreAction;

import com.weenalk.Modal.ProdImg;
import com.weenalk.Modal.Product;
import com.weenalk.Modal.User;


public class ProductDao {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;

	public ProductDao(Connection con) {
		this.con = con;
	}
	
	public List<Product> getAllProducts(){
		List<Product> products = new ArrayList<Product>();
		
		try {
			query="SELECT  p.product_ID,p.name,p.description,p.design,p.weight,p.category_ID,p.color,p.stock,p.price,p.deal,p.mrp,p.shipping,p.warranty,p.mimg,c.cat_name\r\n"
					+ "FROM weena_nadha.product p,weena_nadha.category c\r\n"
					+ "where p.category_ID=c.category_ID;";
			
			pst=this.con.prepareStatement(query);
			rs=pst.executeQuery();
			while(rs.next()) {
				Product row = new Product();
				 
				row.setId(rs.getInt("product_ID"));
				row.setName(rs.getString("name"));
				row.setDescription(rs.getString("description"));
				row.setDesign(rs.getString("design"));
				row.setWeight(rs.getInt("weight"));
				row.setCategory_ID(rs.getInt("category_ID"));
				row.setColor(rs.getString("color"));
				row.setStock(rs.getInt("stock"));
				row.setPrice(rs.getDouble("price"));
				row.setDeal(rs.getString("deal"));
				row.setMrp(rs.getDouble("mrp"));
				row.setShipping(rs.getInt("shipping"));
				row.setWarranty(rs.getString("warranty"));
				row.setImg(rs.getString("mimg"));
				row.setCategory_name(rs.getString("cat_name"));
				products.add(row);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return products;
		
	}

	public ArrayList<String> getALLImg(String id) {
		ArrayList<String> images = new ArrayList<String>();
		
        try {
            query = "select path from image where product_id=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, id);
            rs = pst.executeQuery();
            while(rs.next()){
            	String image=rs.getString("path");
            	images.add(image);
            }
            return images;
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return images;
    }
	//product rating for stars
	public int getProuctrating(String id) {
		int rating=0;
		
		try {
			query="SELECT ROUND((sum(r.rating)/count(r.product_ID)), 0) as rate\r\n"
					+ "from review r\r\n"
					+ "where r.product_ID=?\r\n"
					+ ";";
			pst = this.con.prepareStatement(query);
            pst.setString(1, id);
            rs = pst.executeQuery();
            while(rs.next()) {
            	rating=(rs.getInt("rate"));
            }
            
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rating;
	}
	//product rating for the decimal and the count
	public double[] getRating(String id) {
		double rate[]= {0,0};
		try {
			query="SELECT ROUND((sum(r.rating)/count(r.product_ID)), 1) as rate ,sum(r.rating) as count\r\n"
					+ "from review r\r\n"
					+ "where r.product_ID=?\r\n"
					+ ";";
			pst = this.con.prepareStatement(query);
            pst.setString(1, id);
            rs = pst.executeQuery();
            while(rs.next()) {
            	rate[0]=(rs.getDouble("rate"));
            	rate[1]=(rs.getDouble("count"));
            }
            
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rate;
	}
	//for  the relevant product id fetching the items
	public Product getItem(String id) {
		Product pr1=null;
		try {
			query="SELECT  p.product_ID,p.name,p.description,p.design,p.weight,p.category_ID,p.color,p.stock,p.price,p.deal,p.mrp,p.shipping,p.warranty,p.mimg,c.cat_name\r\n"
					+ "	FROM weena_nadha.product p,weena_nadha.category c\r\n"
					+ "	where p.category_ID=c.category_ID and p.product_ID=?;";
			
			pst=this.con.prepareStatement(query);
			pst.setString(1, id);
			rs=pst.executeQuery();
			while(rs.next()) {
				pr1 = new Product();
				 
				pr1.setId(rs.getInt("product_ID"));
				pr1.setName(rs.getString("name"));
				pr1.setDescription(rs.getString("description"));
				pr1.setDesign(rs.getString("design"));
				pr1.setWeight(rs.getInt("weight"));
				pr1.setCategory_ID(rs.getInt("category_ID"));
				pr1.setColor(rs.getString("color"));
				pr1.setStock(rs.getInt("stock"));
				pr1.setPrice(rs.getDouble("price"));
				pr1.setDeal(rs.getString("deal"));
				pr1.setMrp(rs.getDouble("mrp"));
				pr1.setShipping(rs.getInt("shipping"));
				pr1.setWarranty(rs.getString("warranty"));
				pr1.setImg(rs.getString("mimg"));
				pr1.setCategory_name(rs.getString("cat_name"));
			}	
		}catch(Exception e) {
			e.printStackTrace();
		}
		return pr1;
	
	}
	
}
