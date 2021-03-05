<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.DatabaseConnection"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	String fname = request.getParameter("first_name");
	String lname = request.getParameter("last_name");
	String designation = request.getParameter("designation");
	String salary = request.getParameter("payscale");
	try {
		Connection con = DatabaseConnection.getConnection();
		Statement statement = con.createStatement();
		int edit_account = statement.executeUpdate("update staff set first_name='" + fname + "',last_name='" + lname+ "',designation='" + designation + "',payscale='" + salary + "' where id='" + id + "'");
		if (edit_account > 0) {
			response.sendRedirect("home.jsp");
		} else {
			response.sendRedirect("edit_staff.jsp");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>