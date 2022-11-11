package com.weenalk.Servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.weenalk.Modal.Cart;


@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		 DecimalFormat df = new DecimalFormat("#.##");
		try (PrintWriter out = response.getWriter()) {

			//an empty object type arraylist is created for cartlist
			ArrayList<Cart> cartList = new ArrayList<>();
			
			//hte id is taken and stored in the id variable hence converted to integer
			int id = Integer.parseInt(request.getParameter("id"));
			
			//a cm object is made by the Cart class and id,quantity is set relevantly
			Cart cm = new Cart();
			cm.setId(id);
			cm.setQuantity(1);
			
			//a session object created
			HttpSession session = request.getSession();
			//the session.getAttribute() returns a arraylist so that is stored in the cart_list object type array list and is type casted as object type arraylist
			ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
			
			//the below conditions means if there is know seesion atribute present in the cart_list
			if (cart_list == null) {
				//adds the product to the initially made cartList empty arraylist 
				cartList.add(cm);
				//cartList added to session as cart-list
				session.setAttribute("cart-list", cartList);
				//redirects to the index page
				response.sendRedirect("products.jsp");
			}
			//if session attribute present in the cart_list below happens
			else {
				cartList = cart_list;
				boolean exist = false;
				for (Cart c : cart_list) {
					if (c.getId() == id) {
						exist = true;
						
						//put here that product alreay exist in sweet alert
						response.sendRedirect("products.jsp");
					}
				}

				if (!exist) {
					cartList.add(cm);
					response.sendRedirect("products.jsp");
				}
			}
		}
	}

}