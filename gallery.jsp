<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang = "en">
	<head>
		<title>Hotel Online Reservation</title>
		<meta charset = "utf-8" />
		<meta name = "viewport" content = "width=device-width, initial-scale=1.0" />
		<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css " />
		<link rel = "stylesheet" type = "text/css" href = "css/style.css" />
	</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
 
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right" id="menu">
        <li><a href = "HotelMainPage.jsp">Home</a></li>
		<li><a href = "aboutus.jsp">About us</a></li>
		<li><a href = "contactus.jsp">Contact</a></li>
		<li class="active"><a href = "gallery.jsp">Gallery</a></li>
		<li><a href = "dineandlounge.jsp">Dine and Lounge</a></li>			
		<li><a href = "reservation.jsp">Reservation</a></li>
		<li><a href = "rulesandregulation.jsp">Rules</a></li>
		<li><a href = "adminLogin.jsp">Admin</a></li>
	</ul>
      
    </div>
  </div>
</nav>
<div class="jumbotron text-center"></div>
	<div style = "margin-left:0;" class = "container">
		<div class = "panel panel-default" style="width:1320px;">
			<div class = "panel-body">
				<strong><h3>Gallery</h3></strong>
				<br />
				<div style = "float:left; width:235px; height:250px; margin-left:20px;">
					<img src = "images/gallery/1.jpg" width = "250" height = "250"/>
				</div>
				<div style = "float:left; width:235px; height:250px; margin-left:20px;">
					<img src = "images/gallery/2.jpg" width = "250" height = "250"/>
				</div>
				<div style = "float:left; width:235px; height:250px; margin-left:20px;">
					<img src = "images/gallery/3.jpg" width = "250" height = "250"/>
				</div>
				<div style = "float:left; width:235px; height:250px; margin-left:20px;">
					<img src = "images/gallery/4.jpg" width = "250" height = "250"/>
				</div>
				<div style = "float:left; width:235px; height:250px; margin-left:20px;">
					<img src = "images/gallery/5.jpg" width = "250" height = "250"/>
				</div>
				<br style = "clear:both;" />
				<br />
				<div style = "float:left; width:235px; height:250px; margin-left:20px;">
					<img src = "images/gallery/6.jpg" width = "250" height = "250"/>
				</div>
				<div style = "float:left; width:235px; height:250px; margin-left:20px;">
					<img src = "images/gallery/7.jpg" width = "250" height = "250"/>
				</div>
				<div style = "float:left; width:235px; height:250px; margin-left:20px;">
					<img src = "images/gallery/8.jpg" width = "250" height = "250"/>
				</div>
				
				<div style = "float:left; width:235px; height:250px; margin-left:20px;">
					<img src = "images/gallery/9.jpg" width = "250" height = "250"/>
				</div>
				<div style = "float:left; width:235px; height:250px; margin-left:20px;">
					<img src = "images/gallery/10.jpg" width = "250" height = "250"/>
				</div><br style = "clear:both;" />
				<br />
				<div style = "float:left; width:235px; height:250px; margin-left:20px;">
					<img src = "images/gallery/11.jpg" width = "250" height = "250"/>
				</div>
				<div style = "float:left; width:235px; height:250px; margin-left:20px;">
					<img src = "images/gallery/12.jpg" width = "250" height = "250"/>
				</div>
			</div>
		</div>
	</div>
</body>
<script src = "js/jquery.js"></script>
<script src = "js/bootstrap.js"></script>	
</html>