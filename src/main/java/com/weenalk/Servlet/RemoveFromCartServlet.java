package com.weenalk.Servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.weenalk.Modal.Cart;
import com.weenalk.Modal.Whishlist;


@WebServlet("/removecart")
public class RemoveFromCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		try(PrintWriter out = response.getWriter()){
			String path = request.getParameter("pathh");
			String id = request.getParameter("id");
//			out.println("Product id : "+id)
			if(id!=null && path.equals("cart")) {
				ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
				if(cart_list !=null) {
					for(Cart c:cart_list) {
						if(c.getId()==Integer.parseInt(id)) {
							cart_list.remove(cart_list.indexOf(c));
							break;
						}
						
					}
					response.sendRedirect("cart.jsp");
				}
			}
			if(id!=null && path.equals("wish")) {
				ArrayList<Whishlist> wish_list = (ArrayList<Whishlist>) request.getSession().getAttribute("wish-list");
				if(wish_list !=null) {
					for(Whishlist c:wish_list) {
						if(c.getId()==Integer.parseInt(id)) {
							wish_list.remove(wish_list.indexOf(c));
							break;
						}
						
					}
					response.sendRedirect("whishlist.jsp");
				}
			}
			else {
				response.sendRedirect("cart.jsp");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
