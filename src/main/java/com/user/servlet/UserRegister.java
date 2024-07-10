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

@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
          
		 try {
			 String fullname=request.getParameter("fullname");
			 String email=request.getParameter("email");
			 String password=request.getParameter("password");
			 
			 User u=new User(fullname,email,password);
			 UserDao dao=new UserDao(Dbconnect.getConn());
			 boolean f= dao.register(u);
			
			 HttpSession session=request.getSession();
			 
			 
			 
			 if(f)
			 {
				 session.setAttribute("sucMsg", "Registered Succesfully");
				 response.sendRedirect("signup.jsp");
			 }
			 else
			 {
				 session.setAttribute("errorMsg", "Something Wrong");
				 response.sendRedirect("signup.jsp");
			 }
		 }catch(Exception e)
		 {
			 
		 }
	
	
	}

}
