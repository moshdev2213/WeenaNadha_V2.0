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
import com.weenalk.Modal.Cart;



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
	
	public List<Cart> getCartProducts(ArrayList<Cart> cartList){
		//declaring an empty arraylist named product of Cart type
		List<Cart> products = new ArrayList<Cart>();
		
		try {
			//checks if there is anything is in the cartList 
			if(cartList.size()>0) {
				//item is used to iterate from the cartList arraylist of Cart clz 
				for(Cart item:cartList) {
					query = "SELECT * FROM product p,category c\r\n"
							+ "where p.category_ID=c.category_ID and p.product_ID=?;";
					pst = this.con.prepareStatement(query);
					pst.setInt(1, item.getId());
					rs=pst.executeQuery();
					
					while(rs.next()) {
						Cart row = new Cart();
						row.setId(rs.getInt("product_ID"));
						row.setName(rs.getString("name"));
						row.setPrice(rs.getDouble("price"));
						row.setImg(rs.getString("mimg"));
						row.setCategory_name(rs.getString("cat_name"));
						row.setCartPrice(rs.getDouble("price")*item.getQuantity());
						System.out.println(item.getQuantity());
						row.setQuantity(item.getQuantity());
						//added the object to the initiallly made empty object arraylist type
						products.add(row);
					}
				}
					
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return products;
	}
	public double getTotalCartPrice(ArrayList<Cart> cartList) {
		double sum=0;
		//this below object controls the decimal of the sum 
		 DecimalFormat df = new DecimalFormat("#.00");
		try {
			//this checks if any exst in the cartList object type arraylist
			if(cartList.size()>0) {
				//if so then loop starts to fetxh relevants
				for(Cart item:cartList) {
					query="select price from product where product_ID=?";
					pst=this.con.prepareStatement(query);
					pst.setInt(1,item.getId());
					rs=pst.executeQuery();
					
					while(rs.next()) {
						//sum is inititlalyinitialized to zero the price from the database is fetched relevat to the prduct id and quantity from the cartList array is multiplied in order to get the total
						sum=sum+rs.getDouble("price")*item.getQuantity();
					}
				}
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
//		return sum;
		//returns the sum to limit from 2 deciml places and to convert strig type to double
		return Double.parseDouble(df.format(sum));
	}
	
	//updating coupons
  	public int updateProduct(String name,String description,String design,int weight,int catid,String color,int stock,Double price,String deal,Double mrp,int ship,String warranty,String img,String id) {
  		int result=0;
  		try {
  			query="UPDATE product\r\n"
  					+ "SET name=?,description=?,design=?,weight=?,category_ID=?,color=?,stock=?,price=?,deal=?,mrp=?,shipping=?,warranty=?,mimg=?\r\n"
  					+ "WHERE product_ID = ?;";
  			pst = this.con.prepareStatement(query);
  			pst.setString(1,name);
            pst.setString(2, description);
            pst.setString(3,design);
            pst.setInt(4, weight);
            pst.setInt(5,catid);
            pst.setString(6, color);
            pst.setInt(7,stock);
            pst.setDouble(8, price);
            pst.setString(9,deal);
            pst.setDouble(10, mrp);
            pst.setInt(11,ship);
            pst.setString(12, warranty);
            pst.setString(13,img);
            pst.setString(14,id);
            result=pst.executeUpdate();
  		}catch(Exception e) {
  			e.printStackTrace();
  		}
  		return result;
  	}
  //Inserting coupons
  	public int InsertProduct(String name,String description,String design,int weight,int catid,String color,int stock,Double price,String deal,Double mrp,int ship,String warranty,String img) {
  		int result=0;
  		try {
  			query="INSERT INTO product (name,description,design,weight,category_ID,color,stock,price,deal,mrp,shipping,warranty,mimg)\r\n"
  					+ "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?);";
  			pst = this.con.prepareStatement(query);
            pst.setString(1,name);
            pst.setString(2, description);
            pst.setString(3,design);
            pst.setInt(4, weight);
            pst.setInt(5,catid);
            pst.setString(6, color);
            pst.setInt(7,stock);
            pst.setDouble(8, price);
            pst.setString(9,deal);
            pst.setDouble(10, mrp);
            pst.setInt(11,ship);
            pst.setString(12, warranty);
            pst.setString(13,img);
            result=pst.executeUpdate();
  		}catch(Exception e) {
  			e.printStackTrace();
  		}
  		return result;
  	}
  	
	//delete
  	public int deleteprod(String Id) {
  		int result=0;
  		try {
  			query="DELETE FROM product WHERE product_ID=?";
  			pst = this.con.prepareStatement(query);
            pst.setString(1,Id);
            
            result=pst.executeUpdate();
  		}catch(Exception e) {
  			e.printStackTrace();
  		}
  		return result;
  		
  	}
	
}
