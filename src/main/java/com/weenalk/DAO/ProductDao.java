package com.weenalk.DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.swing.text.html.HTMLDocument.HTMLReader.PreAction;

import com.weenalk.Modal.Product;


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
	
}
