package com.weenalk.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.weenalk.DAO.CouponDao;
import com.weenalk.DBcon.DbCon;
import com.weenalk.Modal.Coupon;

@WebServlet("/CouponsServlet")
public class CouponsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cp = request.getParameter("cp");
		Coupon cpn = new Coupon();
		RequestDispatcher dis = null;
		HttpSession session = request.getSession();
		
		//the dashboard section
		String cname= request.getParameter("cpn_name");
		String cvalue= request.getParameter("cpn_value");
		String id = request.getParameter("iid");
		String iid = request.getParameter("id");
		String stat = request.getParameter("stat");
		String theid = request.getParameter("theid");
		try {
			//the coupon apply section
			CouponDao cd = new CouponDao(DbCon.getConnection());
			cpn = cd.getCoupon(cp);
			session.setAttribute("cpn", cpn);
			System.out.println(cpn);
			System.out.println(cp);
			PrintWriter in = response.getWriter();
			in.print("");
			
			//the dashboard section upadte
			if(stat.equals("up"))  {
				int upresult=cd.updateCoupon(Integer.parseInt(id), Integer.parseInt(cvalue), cname);
				if(upresult>0) {
				System.out.println("DONE");
				request.setAttribute("updatec", "Success");
				response.sendRedirect("coupons.jsp");
				
				
				}
			}
			//the dashboard section insert
			else if(stat.equals("in"))  {
				int inresult= cd.InsertCoupon(Integer.parseInt(cvalue),cname);
				if(inresult>0) {
					System.out.println("DONE");
				request.setAttribute("inatec", "Success");
				response.sendRedirect("coupons.jsp");
				
				}
			}
			//the dashboard section delete
			else if(stat.equals("del"))  {
				
				int inresult= cd.deleteCoupon(theid);
				if(inresult>0) {
					System.out.println("DONE");
				request.setAttribute("inatec", "Success");
				response.sendRedirect("coupons.jsp");
				
				}
			}
			
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
