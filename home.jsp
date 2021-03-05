<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.DatabaseConnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clayton Hotels Dashboard1</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<nav style="background-color:rgba(0, 0, 0, 0.1);"
		class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand">Clayton Hotels Dashboard</a>
		</div>
	</div>
	</nav>
	<div class="container-fluid">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="container-fluid">
					<ul class="nav nav-pills">
						<li class="active"><a href="home.jsp">Home</a></li>
						<li><a href="account.jsp">Accounts</a></li>
						<li><a href="index.jsp">Reservation</a></li>
						<li><a href="room.jsp">Room</a></li>
						<li><a href="logout.jsp"><span class="label label-danger"><%=(String) session.getAttribute("uname")%></span>&nbsp;Logout</a></li>
					</ul>
				</div>
				<br />
				<div class="container-fluid">
					<div class="panel panel-default">
						<div class="panel-body">
							<center>
								<p style="font-family: Georgia, serif;font-size: 40px;">Welcome <%=(String) session.getAttribute("uname")%> !</p>
							</center>
							<br />
				<%
					Connection con = DatabaseConnection.getConnection();
					Statement statement = con.createStatement();
				%>
				<div class="container-fluid">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="alert alert-info">Hotel Staff</div>
							<a class="btn btn-success" href="add_staff.jsp"><i
								class="glyphicon glyphicon-plus"></i> Create New Account</a> <br />
							<br />
							<table id="table" class="table table-bordered">
								<thead>
									<tr>
										<th>Staff Id</th>
										<th>First Name</th>
										<th>Last Name</th>
										<th>Designation</th>
										<th>Salary</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<%
										ResultSet resultset = statement.executeQuery("select * from staff");
										while (resultset.next()) {
									%>
									<tr>
										<td><%=resultset.getInt(1)%></td>
										<td><%=resultset.getString(2)%></td>
										<td><%=resultset.getString(3)%></td>
										<td><%=resultset.getString(4)%></td>
										<td><%=resultset.getString(5)%></td>
										<td><center>
												<a class="btn btn-warning"
													href="edit_staff.jsp?id=<%=resultset.getInt(1)%>"><i
													class="glyphicon glyphicon-edit"></i> Edit</a> <a
													class="btn btn-danger"
													onclick="confirmationDelete(this); return false;"
													href="deleteStaff.jsp?id=<%=resultset.getInt(1)%>"><i
													class="glyphicon glyphicon-remove"></i> Delete</a>
											</center></td>
									</tr>
									<%
										}
									%>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br />
	<br />
	<div style="text-align: right; margin-right: 10px;"
		class="navbar navbar-default navbar-fixed-bottom">
	
	</div>
</body>
<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/jquery.dataTables.js"></script>
<script src="../js/dataTables.bootstrap.js"></script>
<script type="text/javascript">
	function confirmationDelete(anchor) {
		var conf = confirm("Are you sure you want to delete this record?");
		if (conf) {
			window.location = anchor.attr("href");
		}
	}
</script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#table").DataTable();
	});
</script>
</body>
<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.js"></script>
</html>