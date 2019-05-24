package com.librarymgt.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.librarymgt.model.IncomeExpense;
import com.librarymgt.service.IIncomeService;
import com.librarymgt.service.IncomeServiceImpl;

@WebServlet("/AddIncomeServlet")
public class AddIncomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AddIncomeServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("came to the servlet");
		IncomeExpense inex = new IncomeExpense();
		
		inex.setDate(request.getParameter("date"));
		inex.setDescription(request.getParameter("description"));
		inex.setType(request.getParameter("type"));
		inex.setAmount(Double.parseDouble(request.getParameter("amount")));
		
		
		IIncomeService addIncomeExpenseService = new IncomeServiceImpl();
		addIncomeExpenseService.addIncome(inex );
		//System.out.println(inex);
		response.sendRedirect("Views/FinancialManagement/list-incomes.jsp");
	}

}
