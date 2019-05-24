package com.librarymgt.util;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnectionUtil {
	
	public static Connection getDBConnection() {
	 Connection con = null;
	 String url = "jdbc:mysql://localhost:3306/library_management"; //MySQL URL followed by the database name
	 String username = "root"; //MySQL username
	 String password = ""; //MySQL password
	 
	 try {
		 
		 try {
			 Class.forName("com.mysql.jdbc.Driver"); //loading MySQL drivers. This differs for database servers 
		 } 
		 catch (ClassNotFoundException e){
			 e.printStackTrace();
		 }
	 
		 con = DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database
		 System.out.println("Printing connection object "+con);
	 }
	 catch (Exception e){
	 	e.printStackTrace();
	 }
	 
	 	return con; 
	 }
	
	
}	
	
	
	
	
	/*
	 * 
	 * 
	 * 
	 * public static Connection getConnection() throws SQLException, ClassNotFoundException{
		Connection connection = null;

		if(connection==null || connection.isClosed()) {
		
			try {
					
				Class.forName("com.mysql.cj.jdbc.Driver");
				connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/library_mgt_sys", "root", "");	
				//System.out.println("success...");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return connection;
	}
	 * 
	 * 
	 * 
	 * 
	
	
	
	
	public static void main(String arg[]) {
		try {
			new DBConnectionUtil();
			DBConnectionUtil connection = (DBConnectionUtil) DBConnectionUtil.getConnection();
			
			//conn = connection.getConnection();
			PreparedStatement preparedStatement = null;
			((Connection) connection).prepareStatement("insert into book ('id', 'status') values (2, 0)");
            
		}catch (ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
	}
		

		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_mgt_sys", "root", "");
			return con;
			
		}catch(Exception ex) {
			System.out.println("DB connection Error -->  "+ ex.getMessage());
			return null;
		}
	}
	
	public static void close(Connection con) {
		try {
			con.close();
			
		}catch(Exception ex) {
			
		}
	}*/

