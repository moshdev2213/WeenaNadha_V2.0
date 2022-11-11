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
import com.weenalk.Modal.Whishlist;


@WebServlet("/AddToWhishlistServlet")
public class AddToWhishlistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		response.setContentType("text/html;charset=UTF-8");
		 DecimalFormat df = new DecimalFormat("#.##");
		 
		try (PrintWriter out = response.getWriter()) {

			//an empty object type arraylist is created for cartlist
			ArrayList<Whishlist> wishList = new ArrayList<>();
			
			//hte id is taken and stored in the id variable hence converted to integer
			int id = Integer.parseInt(request.getParameter("id"));
			
			//a cm object is made by the Cart class and id,quantity is set relevantly
			Whishlist cm = new Whishlist();
			cm.setId(id);
			
			
			//a session object created
			HttpSession session = request.getSession();
			//the session.getAttribute() returns a arraylist so that is stored in the cart_list object type array list and is type casted as object type arraylist
			ArrayList<Whishlist> wish_list = (ArrayList<Whishlist>) session.getAttribute("wish-list");
			
			//the below conditions means if there is know seesion atribute present in the cart_list
			if (wish_list == null) {
				//adds the product to the initially made cartList empty arraylist 
				wish_list.add(cm);
				//cartList added to session as cart-list
				session.setAttribute("wish-list", wish_list);
				//redirects to the index page
				response.sendRedirect("products.jsp");
			}
			//if session attribute present in the cart_list below happens
			else {
				wishList = wish_list;
				boolean exist = false;
				for (Whishlist c : wish_list) {
					if (c.getId() == id) {
						exist = true;
						
						//put here that product alreay exist in sweet alert
						response.sendRedirect("products.jsp");
					}
				}

				if (!exist) {
					wishList.add(cm);
					response.sendRedirect("products.jsp");
				}
			}
		}
	}

}