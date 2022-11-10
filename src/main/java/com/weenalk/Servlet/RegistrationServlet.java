package com.weenalk.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.weenalk.DAO.LogTimeDao;
import com.weenalk.DAO.RegTimeDao;
import com.weenalk.DAO.UserDao;
import com.weenalk.DBcon.DbCon;
import com.weenalk.Modal.LogTime;
import com.weenalk.Modal.RegTime;
import com.weenalk.Modal.User;


@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname=request.getParameter("firstname");
		String lname=request.getParameter("lastname");
		String mname =request.getParameter("mname");
		String username =request.getParameter("username");
		String email =request.getParameter("email");
		String tel =request.getParameter("phone");
		String job =request.getParameter("job");
		String pass =request.getParameter("password");
		String repass =request.getParameter("passwordConfirmation");
		String country =request.getParameter("countryCode");
		
		String role = "user";
		
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
		
		RequestDispatcher dispatcher = null;
		
		if (fname == null || fname.equals("")) {

			request.setAttribute("registering", "invalidfname");
			dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response);

		}
		if (mname == null || mname.equals("")) {

			request.setAttribute("registering", "invalidmname");
			dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response);

		}
		if (lname == null || lname.equals("")) {

			request.setAttribute("registering", "invalidlname");
			dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response);

		}
		if (username == null || username.equals("")) {

			request.setAttribute("registering", "invalidname");
			dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response);

		}
		if (email == null || email.equals("")) {

			request.setAttribute("registering", "invalidEmail");
			dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response);

		}
		// checks the pasword emptiness and reconfirm password match using elseif
		if (pass == null || pass.equals("")) {

			request.setAttribute("registering", "invalidpwd");
			dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response);

		} else if (!pass.equals(repass)) {

			request.setAttribute("registering", "invalidreupwd");
			dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response);
		}
		// checks the maobile number emptinesss and length ecedding 10
		if (tel == null || tel.equals("")) {

			request.setAttribute("registering", "invalidnumber");
			dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response);

		} else if (tel.length() > 10 ) {

			request.setAttribute("registering", "invalidlength");
			dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response);

		}
		
		try {
			//
			//related to the logintime tables
			RegTime regtime = new RegTime();
			regtime.setUemail(email);
			regtime.setDate(formatter.format(date));
			regtime.setTime(formatter_time.format(time));
			regtime.setDay(formatter_day.format(day));
			regtime.setMonth(formatter_month.format(month));
			
			
			//for user based registration querys
			UserDao udao = new UserDao(DbCon.getConnection());
			boolean user = udao.userRegister(fname,lname,mname,username,tel,job,pass,email,country);
			
			RegTimeDao rgtime= new RegTimeDao(DbCon.getConnection()); 
			boolean result = rgtime.insertlogs(email,formatter.format(date),formatter_time.format(time),formatter_day.format(day),formatter_month.format(month));
			
			if(user==true) {
				request.setAttribute("registering", "success");
				dispatcher = request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
			}
			else {
				request.setAttribute("registering", "fail");
				dispatcher = request.getRequestDispatcher("register.jsp");
				dispatcher.forward(request, response);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		

	}

}
