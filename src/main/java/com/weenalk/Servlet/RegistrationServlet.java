package com.weenalk.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.weenalk.DAO.UserDao;
import com.weenalk.DBcon.DbCon;
import com.weenalk.Modal.User;


@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RegistrationServlet() {
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("AdminLogin.jsp");
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
		
		RequestDispatcher dispatcher = null;
		
		try {
			//for user based registration querys
			UserDao udao = new UserDao(DbCon.getConnection());
			boolean user = udao.userRegister(fname,lname,mname,username,tel,job,pass,country,email);
			if(user==true) {
				request.setAttribute("register", "success");
			}
			else {
				request.setAttribute("register", "fail");
			}
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
		

	}

}
