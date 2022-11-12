package com.weenalk.Servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.weenalk.DAO.OrdreDao;
import com.weenalk.DBcon.DbCon;
import com.weenalk.Modal.Admin;
import com.weenalk.Modal.Cart;
import com.weenalk.Modal.Order;
import com.weenalk.Modal.User;


/**
 * Servlet implementation class OrderNowServlet
 */
@WebServlet("/order-now")
public class OrderNowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try (PrintWriter out = response.getWriter()) {
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

			// object created to store logins check
			User auth = (User) request.getSession().getAttribute("auth");
			// checks wether the user is loged in or not
			if (auth != null) {
				// takes the id from the form element presented in the cart.jsp page
				String productId = request.getParameter("id");
				// stores the quantity from the form element presented in the cart.jsp page
				int productQuantity = Integer.parseInt(request.getParameter("quantity"));
				// when the product quantity is presnted or 0 below happens
				if (productQuantity <= 0) {
					// this assigns product quantity to 1
					productQuantity = 1;
				}
				// created an object from the Order java bean
				Order orderModel = new Order();
				// sets relevant values to the attributes in the Order class by its methods
				orderModel.setId(Integer.parseInt(productId));
				orderModel.setUmail(auth.getEmail());
				orderModel.setQunatity(productQuantity);
				orderModel.setDate(formatter.format(date));
				orderModel.setTime(formatter_time.format(time));
				orderModel.setDay(formatter_day.format(day));
				orderModel.setMonth(formatter_month.format(month));

				OrdreDao orderdao = new OrdreDao(DbCon.getConnection());
				boolean result = orderdao.insertOrder(orderModel);
				if (result) {
					ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
					if (cart_list != null) {
						for (Cart c : cart_list) {
							if (c.getId() == Integer.parseInt(productId)) {
								cart_list.remove(cart_list.indexOf(c));
								break;
							}
						}
					}
					response.sendRedirect("orders.jsp");
				} else {
					out.print("FAILED");
//	                	response.sendRedirect("login.jsp");
				}
			}
			// object created to store logins check
				Admin auth = (Admin) request.getSession().getAttribute("authadmin");
						// checks wether the user is loged in or not
			if (auth != null) {
				// takes the id from the form element presented in the cart.jsp page
				String productId = request.getParameter("id");
				// stores the quantity from the form element presented in the cart.jsp page
				int productQuantity = Integer.parseInt(request.getParameter("quantity"));
				// when the product quantity is presnted or 0 below happens
				if (productQuantity <= 0) {
					// this assigns product quantity to 1
					productQuantity = 1;
				}
				// created an object from the Order java bean
				Order orderModel = new Order();
				// sets relevant values to the attributes in the Order class by its methods
				orderModel.setId(Integer.parseInt(productId));
				orderModel.setUid(auth.getId());
				orderModel.setQunatity(productQuantity);
				orderModel.setDate(formatter.format(date));
				orderModel.setTime(formatter_time.format(time));
				orderModel.setDay(formatter_day.format(day));
				orderModel.setMonth(formatter_month.format(month));

				OrdreDao orderdao = new OrdreDao(DbCon.getConnection());
				boolean result = orderdao.insertOrder(orderModel);
				if (result) {
					ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
					if (cart_list != null) {
						for (Cart c : cart_list) {
							if (c.getId() == Integer.parseInt(productId)) {
								cart_list.remove(cart_list.indexOf(c));
								break;
							}
						}
					}
					response.sendRedirect("orders.jsp");
				} else {
					out.print("FAILED");
//	                	response.sendRedirect("login.jsp");
				}
			}
			else {
				response.sendRedirect("login.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// form method presentin the cart jsp is POSt but all related codes are initited
		// in doGet method upper
		// it doesnt matter bcz goGet is then called in the doPost method
		doGet(request, response);
	}

}
