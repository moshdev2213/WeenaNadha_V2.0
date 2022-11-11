package com.weenalk.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.weenalk.DAO.RemoveDao;
import com.weenalk.DBcon.DbCon;

@WebServlet("/UserRemove")
public class UserRemove extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dis = null;
		try {
			RemoveDao rmv = new RemoveDao(DbCon.getConnection());
			int result = rmv.removeUser(request.getParameter("id"));
			if(result==1) {
				System.out.println("success");
				request.setAttribute("rmove", "success");
				dis = request.getRequestDispatcher("list_users.jsp");
				dis.forward(request, response);
			}
			else {
				System.out.println("Unsuccesss");
				request.setAttribute("rmove", "Unsuccesss");
				dis = request.getRequestDispatcher("list_users.jsp");
				dis.forward(request, response);
			}
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
