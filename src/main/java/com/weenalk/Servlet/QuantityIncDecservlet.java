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

@WebServlet("/quantityincdec")
public class QuantityIncDecservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		
		try (PrintWriter out = response.getWriter()) {
			//this takes the action from the url and stores it in action variable
			String action = request.getParameter("action");
			//the id is also taken from the url and converted to int and stored in id variable
			int id = Integer.parseInt(request.getParameter("id"));
			//in the cart_list named cart type object array list with cart_list named atribute which carries cart product item details are stored 
			ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
			
			//checks if the action of the url is not null and the id of the url is 1 or greater than 1 
			if (action != null && id >= 1) {
				//if so in this condition checks the action value isqual to "inc"
				if (action.equals("inc")) {
					//the for each loop iterates through out the cart_list named object type arraylist
					for (Cart c : cart_list) {
						//of the above object typed cart_list checks the id matcthed to that of the url id 
						if (c.getId() == id) {
							//in here the quantity present in the cart_list object type array_list is accessed and stored in the quantity variable
							int quantity = c.getQuantity();
							//quantity variable is incremented
							quantity++;
							//and the new value of incremented quantity is set as the quantity of the Cart class
							c.setQuantity(quantity);
							//redirects to the cart.jsp page
							response.sendRedirect("cart.jsp");
						}
					}
				}
				//condition checks the action is equal to "dec"
				if (action.equals("dec")) {
					//hte belw for loop iterates through out the cart_list named object type arraylist of Cart 
					for (Cart c : cart_list) {
						//checks id from url and id in cart_list named object type arraylist of Cart is equal
						//and also checks the quantity if its les than one then doesnt execute below block ad ths prevent negative and 0
						if (c.getId() == id && c.getQuantity() > 1) {
							//in here the quantity present in the cart_list object type array_list is accessed and stored in the quantity variable
							int quantity = c.getQuantity();
							//the value of quantity get decremented
							quantity--;
							//the new value is set to the value of quantity in Cart class 
							c.setQuantity(quantity);
							//exits the for loop
							break;
						}
					}
					//redirects to the cart page
					response.sendRedirect("cart.jsp");
				}
			} else {
				//executes below condition when actio is null and id is less than 1
				response.sendRedirect("cart.jsp");
			}
		}
	}

}