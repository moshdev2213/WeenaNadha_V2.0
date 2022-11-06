package com.weenalk.DAO;
import com.weenalk.Modal.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LogTimeDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;

	public LogTimeDao(Connection con) {
		this.con = con;
	}

	public boolean insertlogs(LogTime lgtime) {
		boolean result = false;

		try {
			query = "Insert into logtime (uemail,time,day,month,date,role) values(?,?,?,?,?,?)";
			pst = this.con.prepareStatement(query);

			pst.setString(1, lgtime.getUemail());
			pst.setString(2, lgtime.getTime());
			pst.setString(3, lgtime.getDay());
			pst.setString(4, lgtime.getMonth());
			pst.setString(5, lgtime.getDate());
			pst.setString(6, lgtime.getRole());

			pst.executeUpdate();
			result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
