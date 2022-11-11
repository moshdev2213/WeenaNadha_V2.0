package com.weenalk.Servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.weenalk.DAO.ConactDao;
import com.weenalk.DBcon.DbCon;
import com.weenalk.Modal.Sms;
import com.weenalk.Modal.User;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// (User) syas that it is type casted
		User authin = (User) request.getSession().getAttribute("auth");
		RequestDispatcher dis = null;
		// object made to format the date
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		// object made to format the date
		SimpleDateFormat formatter_year = new SimpleDateFormat("yyyy");
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

		String fname = request.getParameter("c_fname");
		String lname = request.getParameter("c_lname");
		String email = request.getParameter("c_email");
		String subject = request.getParameter("c_subject");
		String messsage = request.getParameter("c_message");
		String Tel = request.getParameter("c_tel");
		String emailuser = "Guest";
		if (authin != null) {
			emailuser = authin.getEmail();
			Tel = authin.getTel();
		} else {
			emailuser = "Guest";
		}

		try {

			ConactDao cd = new ConactDao(DbCon.getConnection());
			int result = cd.Contactdetails(emailuser, fname, lname, email, subject, messsage, formatter.format(date),
					formatter_time.format(time),Tel);

			String mssg = "HEY THERE MR." + fname
					+ "\\n\\nThank You for Contacting WeenaNadaLk Your Request is Succesfully Recorded Our Team Will Contact You Shortly\\n\\n2022 WEENANADHA\\nAll Rights Reserved";
			Sms.Send(Tel, mssg);

			request.setAttribute("contact", "success");
			dis = request.getRequestDispatcher("contact.jsp");
			dis.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
