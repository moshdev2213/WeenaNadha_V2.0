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

import com.weenalk.DBcon.DbCon;
import com.weenalk.DAO.AdminDao;
import com.weenalk.DAO.LogTimeDao;
import com.weenalk.DAO.UserDao;
import com.weenalk.Modal.Admin;
import com.weenalk.Modal.LogTime;
import com.weenalk.Modal.SecurityEmail;
import com.weenalk.Modal.User;
import com.weenalk.Modal.Sms;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF8");
		try(PrintWriter out = response.getWriter()){
				
				RequestDispatcher dis = null;
				
				//parameter catching from the form
				String email=request.getParameter("email");
				String password=request.getParameter("password");
				String role = "user";
				
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
					dis = request.getRequestDispatcher("login.jsp");
					dis.forward(request, response);
				}
				if(password== null || password.equals("")) {
					request.setAttribute("stat", "invalidPassword");
					dis = request.getRequestDispatcher("login.jsp");
					dis.forward(request, response);
				}
			
				try {
					//for user based login credentials
					UserDao udao = new UserDao(DbCon.getConnection());
					User user = udao.userLogin(email,password);
					if(user !=null) {
						request.getSession().setAttribute("auth", user);
						
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
						
						//the boelow is the code related to the sms sendings
						String mssg = "SIGN IN DETECTED\\n\\nWe noticed a new Sign to your Weena Naadha account our system monitored login to our user accounts and credentials are as follows\\n\\nTime\\t:"+formatter_time.format(time)+"\\nDate\\t:"+formatter_day.format(day)+" "+formatter_month.format(month)+"\\nIP\\t:"
								+ ip + "\\nISP\\t:" + isp + "\\nBrowser\\t:" + browser + "\\nCity\\t:" + city + "\\nRegion\\t:"
								+ region + "\\nCountry\\t:" + country+"\\nLatitude\\t:"+lat+"\\nLongitude\\t:"+longs
								+ "\\n\\nIf you Dont Recogonize the Above Credentials someone else might be trying to access your account. Please log in to your account and Change your Credentials in order to Secure your account\\n\\nIf the login was done by your kindly Ignore this message\\n\\nSincerly,\\nThe Weena Naadha Support Center\\n\\n\\n 2022 WeenaLk\\nAll Rights Reserved";

						
						//ms2 works i think because of escapr sequences the msg doent sends
						//the message works we should use the dual blackslashes instead for working "\\"
//						Sms.Send(user.getTel(), mssg);
						//sms sending ends here
						
						// email body insert here
						
						//mail forwarding ends here
						
						//redirects to index.jsp page
						request.setAttribute("stat", "success");
						dis = request.getRequestDispatcher("index.jsp");
						dis.forward(request, response);
					}
					else {
						request.setAttribute("stat", "invalidCredentials");
						dis = request.getRequestDispatcher("login.jsp");
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
