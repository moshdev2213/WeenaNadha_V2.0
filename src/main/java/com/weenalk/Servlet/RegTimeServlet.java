package com.weenalk.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.weenalk.DAO.RegTimDao;
import com.weenalk.DBcon.DbCon;

@WebServlet("/RegTimeServlet")
public class RegTimeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stat = request.getParameter("stats");
		String id = request.getParameter("id");
		
		
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String time = request.getParameter("time");
		String day = request.getParameter("day");
		
		try {
			RegTimDao rd = new RegTimDao(DbCon.getConnection());
			if(stat.equals("del")) {

				
				rd.deletereg(stat);
				
				response.sendRedirect("Regtime.jsp");
				
			}
			else if(stat.equals("in")) {

				int inresult= rd.Insertreg(time, day, month, day);
				if(inresult>0) {
					System.out.println("DONE");
				request.setAttribute("inatec", "Success");
				response.sendRedirect("Regtime.jsp");
				}
				
			}
			else if(stat.equals("up")) {

				int upresult= rd.updatereg(stat, time, day, month, day);
				if(upresult>0) {
					System.out.println("DONE");
				request.setAttribute("inatec", "Success");
				response.sendRedirect("Regtime.jsp");
				
				
			}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		doGet(request, response);
	}

}
