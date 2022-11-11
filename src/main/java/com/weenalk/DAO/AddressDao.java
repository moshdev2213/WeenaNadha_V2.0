package com.weenalk.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.weenalk.Modal.Address;
import com.weenalk.Modal.User;

public class AddressDao {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;

	public AddressDao(Connection con) {
		this.con = con;
	}
	public Address getaddressemail(String email) {
		Address address =null;
		
		try {
			query="select a.province_ID,a.district_ID,a.street,a.postal_code,a.city\r\n"
					+ "from users u,address a\r\n"
					+ "where u.address_ID=a.address_ID and u.useremail=\"?\";";
			
			pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            rs = pst.executeQuery();
            if(rs.next()){
            	address = new Address();
            	address.setpID(rs.getString("province_ID"));
            	address.setdID(rs.getString("distric_ID"));
            	address.setStreet(rs.getString("street"));
            	address.setPostalcode(rs.getString("postal_code"));
            	address.setCity(rs.getString("city"));
            }
		}catch(Exception e) {
			e.printStackTrace();
		}
		return address;
	}
	public int insertAddress(String province,String district,String street,int pcode, String city) {
		int result=0;
		
		try {
			query="insert into address(province_ID,district_ID,street,postal_code,city) values (?,?,?,?,?)";
			pst = this.con.prepareStatement(query);

			pst.setString(1, province);
			pst.setString(2, district);
			pst.setString(3, street);
			pst.setInt(4, pcode);
			pst.setString(5, city);
			pst.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return result;
	}
	public int lastId() {
		int rst=0;
		try {
			query="select last_insert_id() as id;";
			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			while(rs.next()) {
				rst=rs.getInt("id");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rst;
		
	}
}
