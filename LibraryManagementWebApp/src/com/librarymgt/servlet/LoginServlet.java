package com.librarymgt.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.librarymgt.service.Validate;



@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("awa");
		String un = request.getParameter("username");
        String pw = request.getParameter("password");
        
        if(Validate.checkUser(un, pw))
        {
        	response.sendRedirect("Views/memberManagement/user-profile.jsp");
            //RequestDispatcher rs = request.getRequestDispatcher("Welcome");
            //rs.forward(request, response);
        }
        else
        {
        	response.sendRedirect("Views/memberManagement/user-login-error.jsp");
           //out.println("Username or Password incorrect");
           //RequestDispatcher rs = request.getRequestDispatcher("index.html");
           //rs.include(request, response);
        }
	}

}
