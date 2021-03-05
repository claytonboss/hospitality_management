package com.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AddAccount
 */
@WebServlet("/AddStaff")
public class AddStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			
			String fname = request.getParameter("first_name");
			String lname = request.getParameter("last_name");
			String desig = request.getParameter("designation");
			String salary= request.getParameter("payscale");
			Connection con = DatabaseConnection.getConnection();
			Statement st = con.createStatement();
			int addAccount=st.executeUpdate("insert into staff (first_name,last_name,designation,payscale) values('"+fname+"','"+lname+"','"+desig+"','"+salary+"')");
			if(addAccount>0){
				response.sendRedirect("home.jsp");
			}else{
				response.sendRedirect("home.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
