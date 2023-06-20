package com.DemoWebApp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out= response.getWriter();
		String userName= request.getParameter("userName");
		String password= request.getParameter("password");
		NewConnection nc = new NewConnection();
		var valid=nc.GetConnect(userName, password);
		
		if(valid) {
			HttpSession session = request.getSession();
			session.setAttribute("username", userName);
			response.sendRedirect("Welcome.jsp");
		}
		else {
			out.println("Invalid credentials.");
		}
	}

}
