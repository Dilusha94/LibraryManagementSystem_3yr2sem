package com.librarymgt.service;

import java.sql.PreparedStatement;

import com.librarymgt.model.Book;
import com.librarymgt.util.DBConnectionUtil;

public class AddBookServiceImpl implements IAddBookService{
	public void addBook(Book book ) {
		
		String sql = "INSERT INTO book(bName, category, author, isbn, avilableCopy, rent_lend, renting_fee) VALUE(?,?,?,?,?,?,?)";
			
			
		try {
			PreparedStatement ps = DBConnectionUtil.getDBConnection().prepareStatement(sql);
			
			ps.setString(1, book.getBookName());
			ps.setString(2, book.getCategory());
			ps.setString(3, book.getAuthor());
			ps.setString(4, book.getIsbn());
			ps.setInt(5, book.getCopies());
			ps.setString(6, book.getType());
			ps.setDouble(7, book.getRentFee());
			
			ps.executeUpdate();
			
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
/*
	//System.out.println(book);
	Connection conn = null;
	PreparedStatement ps = null;
	
	
	try {
		
		conn = DBConnectionUtil.getDBConnection();
		String sql = "INSERT INTO book(bName, category, author, isbn, avilableCopy, rent_lend, renting_fee) VALUE(?,?,?,?,?,?,?)";		
		ps = conn.prepareStatement(sql); 
		
		ps.setString(1, book.getBookName());
		ps.setString(2, book.getCategory());
		ps.setString(3, book.getAuthor());
		ps.setString(4, book.getIsbn());
		ps.setInt(5, book.getCopies());
		ps.setString(6, book.getType());
		ps.setDouble(7, book.getRentFee());
		
		int i= ps.executeUpdate();
		 
		 if (i!=0)  //Just to ensure data has been inserted into the database
		 return "SUCCESS"; 
		 }
		 catch(SQLException e)
		 {
		 e.printStackTrace();
		 }
		 
		 return "Oops.. Something went wrong there..!"; */
	}
}

