package com.librarymgt.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.librarymgt.model.Book;
import com.librarymgt.service.AddBookServiceImpl;
import com.librarymgt.service.IAddBookService;

@WebServlet("/AddBookServlet")
public class AddBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AddBookServlet() {
        super();
        
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/list-book.jsp");
		//dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("came to the servlet");
		Book book = new Book();
		
		book.setBookName(request.getParameter("book-name"));
		book.setCategory(request.getParameter("category"));
		book.setAuthor(request.getParameter("author"));
		book.setIsbn(request.getParameter("isbn"));
		book.setType(request.getParameter("rent-lend"));
		book.setCopies(Integer.parseInt(request.getParameter("copies")));
		book.setRentFee(Double.parseDouble(request.getParameter("rent-fee")));
		
		System.out.println(book);
		
		IAddBookService addBookService = new AddBookServiceImpl();
		
		addBookService.addBook(book);
		response.sendRedirect("Views/stockManagement/list-book.jsp");
		//RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Views/stockManagement/list-book.jsp");
		//dispatcher.forward(request, response);
	
	}

}
