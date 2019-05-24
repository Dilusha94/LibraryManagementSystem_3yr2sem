package com.librarymgt.service;

import java.sql.PreparedStatement;

import com.librarymgt.model.IncomeExpense;
import com.librarymgt.util.DBConnectionUtil;

public class ExpenseServiceImpl implements IExpenseService{
	
	public void addExpense(IncomeExpense inex) {

		String sql = "INSERT INTO  paymentother(Date, description, type, amount) VALUE(?,?,?,?)";

		try {
			PreparedStatement ps = DBConnectionUtil.getDBConnection().prepareStatement(sql);
			
			ps.setString(1, inex.getDate());
			ps.setString(2, inex.getDescription());
			ps.setString(3, inex.getType());
			ps.setDouble(4, inex.getAmount());

			

			ps.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
