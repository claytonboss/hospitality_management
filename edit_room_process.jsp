<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.DatabaseConnection"%>
<%
	int id = Integer.parseInt(request.getParameter("rid"));
	String rtype = request.getParameter("rtype");
	String price = request.getParameter("price");
	String hkid	 = request.getParameter("hkid");
	String rsid	 = request.getParameter("rsid");
	try {
		Connection con = DatabaseConnection.getConnection();
		Statement statement = con.createStatement();
		int edit_account = statement.executeUpdate("update room set room_type='" + rtype + "',price='" + price+ "',housekeeper_id='"+hkid+"',roomserver_id='"+rsid+"'where room_id='" + id + "'");
		if (edit_account > 0) {
			response.sendRedirect("room.jsp");
		} else {
			response.sendRedirect("edit_room.jsp");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>