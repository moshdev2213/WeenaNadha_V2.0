package com.weenalk.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.weenalk.DAO.AdminDao;
import com.weenalk.DAO.LogTimeDao;
import com.weenalk.DAO.UserDao;
import com.weenalk.DBcon.DbCon;
import com.weenalk.Modal.Admin;
import com.weenalk.Modal.LogTime;
import com.weenalk.Modal.SecurityEmail;
import com.weenalk.Modal.User;

/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF8");
		try(PrintWriter out = response.getWriter()){
				
				RequestDispatcher dis = null;
				
				//parameter catching from the form
				String email=request.getParameter("email");
				String password=request.getParameter("password");
				String code=request.getParameter("adcp");
				String role = "admin";
				
				String ip =request.getParameter("ip");
				String isp =request.getParameter("isp");
				String country =request.getParameter("country");
				String city =request.getParameter("city");
				String region =request.getParameter("region");
				String lat =request.getParameter("lat");
				String longs =request.getParameter("long");
				String browser =request.getParameter("browser");
				String version =request.getParameter("version");
				String os =request.getParameter("os");
				String description =request.getParameter("description");
				
			
				// object made to format the date
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
				// object made to format the date
				SimpleDateFormat formatter_year = new SimpleDateFormat("yyyy");
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
			
				if(email== null || email.equals("")) {
					request.setAttribute("stat", "invalidEmail");
					dis = request.getRequestDispatcher("AdminLogin.jsp");
					dis.forward(request, response);
				}
				if(password== null || password.equals("")) {
					request.setAttribute("stat", "invalidPassword");
					dis = request.getRequestDispatcher("AdminLogin.jsp");
					dis.forward(request, response);
				}
				if(code== null || code.equals("")) {
					request.setAttribute("stat", "invalidcode");
					dis = request.getRequestDispatcher("AdminLogin.jsp");
					dis.forward(request, response);
				}
				
				try {
					
					//for admin based lodin credentials
					AdminDao adao = new AdminDao(DbCon.getConnection());
					Admin admin = adao.adminLogin(email,password,code);
					if(admin !=null) {
						request.getSession().setAttribute("authadmin", admin);
						
						//related to the logintime tables
						LogTime logtime = new LogTime();
						logtime.setUemail(email);
						logtime.setDate(formatter.format(date));
						logtime.setTime(formatter_time.format(time));
						logtime.setDay(formatter_day.format(day));
						logtime.setMonth(formatter_month.format(month));
						logtime.setRole(role);
						
						LogTimeDao lgtime= new LogTimeDao(DbCon.getConnection()); 
						boolean result = lgtime.insertlogs(logtime);
						
						//mail forwarding starts from here
						
						//mail forwarding ends here
						
						//redirects to index.jsp page
						request.setAttribute("authadmin", "success");
						dis = request.getRequestDispatcher("index.jsp");
						dis.forward(request, response);
					}
					else {
						request.setAttribute("stat", "invalidCredentials");
						dis = request.getRequestDispatcher("AdminLogin.jsp");
						dis.forward(request, response);
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
