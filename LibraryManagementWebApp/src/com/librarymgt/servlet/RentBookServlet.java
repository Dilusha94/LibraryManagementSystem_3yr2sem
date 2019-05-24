package com.librarymgt.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.librarymgt.model.IssuedBook;

@WebServlet("/RentBookServlet")
public class RentBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public RentBookServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("came to the rent servlet");

		IssuedBook issuedBook = new IssuedBook();
		
		issuedBook.setBook_id(Integer.parseInt(request.getParameter("book-id")));
		issuedBook.setMem_id(Integer.parseInt(request.getParameter("book-id")));
		issuedBook.setRent_fee(Double.parseDouble(request.getParameter("rent-fee")));
		
		System.out.println(issuedBook);
		
	}

}
