<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%
String id = request.getParameter("d");
int no = Integer.parseInt(id);
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_management","root","");
Statement stat = conn.createStatement();

stat.executeUpdate("DELETE FROM paymentother WHERE opid='"+no+"'");
response.sendRedirect("list-expenses.jsp");
%>