package com.weenalk.Servlet;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.weenalk.DAO.NewPasswordDao;
import com.weenalk.DBcon.DbCon;
import com.weenalk.Modal.Sms;

/**
 * Servlet implementation class NewPassword
 */
@WebServlet("/newPassword")
public class NewPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String newPassword = request.getParameter("password");
		String confPassword = request.getParameter("confPassword");
		String emaill = (String) session.getAttribute("email");
		RequestDispatcher dispatcher = null;
		if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {

			try {
				NewPasswordDao nsd = new NewPasswordDao(DbCon.getConnection());
				int result = nsd.passwordreset(newPassword, emaill);
				String[] tel = nsd.getTel(emaill);

				String msg = "Dear " + tel[1]
						+ " User Your Account Password is\\nSuccesfully Restored\\nNew Credentials are as follows\\n"
						+ newPassword + "\\nDo not Share\\n\\nWeenaNadha Support Center";
				Sms.Send(tel[0], msg);

				if (result > 0) {
					request.setAttribute("stat", "resetSuccess");
					dispatcher = request.getRequestDispatcher("login.jsp");
				} else {
					request.setAttribute("stat", "resetFailed");
					dispatcher = request.getRequestDispatcher("login.jsp");
				}
				dispatcher.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
