package com.librarymgt.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.librarymgt.model.IncomeExpense;
import com.librarymgt.service.ExpenseServiceImpl;
import com.librarymgt.service.IExpenseService;



@WebServlet("/AddExpenseServlet")
public class AddExpenseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AddExpenseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("came to the servlet");
		IncomeExpense inex = new IncomeExpense();
		
		inex.setDate(request.getParameter("date"));
		inex.setDescription(request.getParameter("description"));
		inex.setType(request.getParameter("type"));
		inex.setAmount(Double.parseDouble(request.getParameter("amount")));
		
		
		IExpenseService addIncomeExpenseService = new ExpenseServiceImpl();
		addIncomeExpenseService.addExpense(inex );
		//System.out.println(inex);
		response.sendRedirect("Views/FinancialManagement/list-expenses.jsp");
	}

}
