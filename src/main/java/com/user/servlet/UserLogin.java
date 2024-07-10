package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.Dbconnect;
import com.entity.User;

@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String email = request.getParameter("email");
			String password = request.getParameter("password");

			HttpSession session = request.getSession();

			UserDao dao = new UserDao(Dbconnect.getConn());
			User user = dao.Login(email, password);

			if (user != null) {
				session.setAttribute("userObj", user);
				response.sendRedirect("index.jsp");
			} else {
				session.setAttribute("errorMsg", "Invalid email or password");
				response.sendRedirect("admin_login.jsp");
			}

		} catch (Exception e) {

		}

	}

}
