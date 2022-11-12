package com.weenalk.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.weenalk.Modal.Cart;
import com.weenalk.Modal.Whishlist;

public class WhishlistDao {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;

	public WhishlistDao(Connection con) {
		this.con = con;
	}

	public List<Whishlist> getWishProducts(ArrayList<Whishlist> Whishlist){
		//declaring an empty arraylist named product of Cart type
		List<Whishlist> wish = new ArrayList<Whishlist>();
		
		try {
			//checks if there is anything is in the cartList 
			if(Whishlist.size()>0) {
				//item is used to iterate from the cartList arraylist of Cart clz 
				for(Whishlist item:Whishlist) {
					query = "SELECT * FROM product p,category c\r\n"
							+ "where p.category_ID=c.category_ID and p.product_ID=?;";
					pst = this.con.prepareStatement(query);
					pst.setInt(1, item.getId());
					rs=pst.executeQuery();
					
					while(rs.next()) {
						Whishlist row = new Whishlist();
						row.setId(rs.getInt("product_ID"));
						row.setName(rs.getString("name"));
						row.setPrice(rs.getDouble("price"));
						row.setImg(rs.getString("mimg"));
						row.setDesign(rs.getString("design"));
						row.setCategory_name(rs.getString("cat_name"));
						
						//added the object to the initiallly made empty object arraylist type
						wish.add(row);
					}
				}
					
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return wish;
	}
	
}
