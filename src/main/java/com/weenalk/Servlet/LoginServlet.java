package com.weenalk.Servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.weenalk.DBcon.DbCon;
import com.weenalk.DAO.AdminDao;
import com.weenalk.DAO.LogTimeDao;
import com.weenalk.DAO.UserDao;
import com.weenalk.Modal.Admin;
import com.weenalk.Modal.LogTime;
import com.weenalk.Modal.User;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF8");
		try(PrintWriter out = response.getWriter()){
				//parameter catching from the form
				String email=request.getParameter("email");
				String password=request.getParameter("password");
			
				// object made to format the date
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
				// object made to format the time
				SimpleDateFormat formatter_time = new SimpleDateFormat("hh:mm:ss aa");
				// object made to format the time
				SimpleDateFormat formatter_day = new SimpleDateFormat("EEEE");
				// object made to format the time
				SimpleDateFormat formatter_month = new SimpleDateFormat("MMMM");

				// captures the date and time
				Date date = new Date();
				Date time = new Date();
				Date day = new Date();
				Date month = new Date();
			
				try {
					//for user based login credentials
					UserDao udao = new UserDao(DbCon.getConnection());
					User user = udao.userLogin(email,password);
					if(user !=null) {
						out.print("user gmmc thma");
						request.getSession().setAttribute("auth", user);
						
						//related to the logintime tables
						LogTime logtime = new LogTime();
						logtime.setUemail(email);
						logtime.setDate(formatter.format(date));
						logtime.setTime(formatter_time.format(time));
						logtime.setDay(formatter_day.format(day));
						logtime.setMonth(formatter_month.format(month));
						
						LogTimeDao lgtime= new LogTimeDao(DbCon.getConnection()); 
						boolean result = lgtime.insertlogs(logtime);
						
						//redirects to index.jsp page
						response.sendRedirect("index.jsp");
					}
					//for admin based lodin credentials
					AdminDao adao = new AdminDao(DbCon.getConnection());
					Admin admin = adao.adminLogin(email,password);
					if(admin !=null) {
						out.print("user gmmc thma");
						request.getSession().setAttribute("authadmin", admin);
						response.sendRedirect("admin.jsp");
					}
					else {
						out.print("plyn ynda");
					}
				}
				catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
			
		}  
		catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
