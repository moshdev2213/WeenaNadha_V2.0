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
						
						LogTimeDao lgtime= new LogTimeDao(DbCon.getConnection()); 
						boolean result = lgtime.insertlogs(logtime);
						
						//mail forwarding starts from here
						String to = email;// change accordingly
						// Get the session object
						Properties props = new Properties();
						props.put("mail.smtp.host", "smtp.gmail.com");
						props.put("mail.smtp.socketFactory.port", "465");
						props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
						props.put("mail.smtp.auth", "true");
						props.put("mail.smtp.port", "465");
						Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
							protected PasswordAuthentication getPasswordAuthentication() {
								return new PasswordAuthentication("qwwerrrty11@gmail.com", "qbmlxfdztnapfczh");// Put your email
																												// id and
																												// password here
							}
						});
						// compose message
						try {
							MimeMessage message = new MimeMessage(session);
							message.setFrom(new InternetAddress(email));// change accordingly
							message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
							message.setSubject("LOGIN SERVICES");
							//the below generates the html email body that is created in the html.jaava class 
							//message.setContent(ht.getHtml(),"text/html");
							
							message.setContent(SecurityEmail.getSecure(ip,isp,browser,city,region,country,lat,longs,formatter_year.format(date),formatter_time.format(time),formatter_day.format(day),formatter_month.format(month)),"text/html");
							
							//below can be used for text type content to be mailed
							// message.setText("Hey There User\n Your OTP Requested : " + otpvalue);
							// send message
							Transport.send(message);
							System.out.println("message sent successfully");
						}
						
						catch (MessagingException e) {
							throw new RuntimeException(e);
						}
						//mail forwarding ends here
						
						//redirects to index.jsp page
						response.sendRedirect("index.jsp");
					}
					//for admin based lodin credentials
					AdminDao adao = new AdminDao(DbCon.getConnection());
					Admin admin = adao.adminLogin(email,password);
					if(admin !=null) {
						request.getSession().setAttribute("authadmin", admin);
						response.sendRedirect("dashdex.jsp");
					}
					else {
						out.print("fdfsfsf");
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
