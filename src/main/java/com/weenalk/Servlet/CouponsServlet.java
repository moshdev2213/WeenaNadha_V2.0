package com.weenalk.Servlet;

import java.io.IOException;
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

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cp = request.getParameter("cp");
		Coupon cpn= new Coupon();
		RequestDispatcher dis = null;
		HttpSession session = request.getSession();
		try {
			CouponDao cd= new CouponDao(DbCon.getConnection());
			cpn=cd.getCoupon(cp);
			session.setAttribute("cpn", cpn);
			System.out.println(cpn);
			System.out.println(cp);
			
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
