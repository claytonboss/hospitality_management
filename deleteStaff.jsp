<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.DatabaseConnection"%>
<%
	String id = request.getParameter("id");
	Connection con = DatabaseConnection.getConnection();
	Statement statement = con.createStatement();
	int deleteAccount = statement.executeUpdate("delete from staff where id='" + id + "'");
	if (deleteAccount > 0) {
		response.sendRedirect("home.jsp");
	} else {
		response.sendRedirect("home.jsp");
	}
%>