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
        <li class="active"><a href = "HotelMainPage.jsp">Home</a></li>
		<li><a href = "aboutus.jsp">About us</a></li>
		<li><a href = "contactus.jsp">Contact</a></li>
		<li><a href = "gallery.jsp">Gallery</a></li>
		<li><a href = "dineandlounge.jsp">Dine and Lounge</a></li>			
		<li><a href = "reservation.jsp">Reservation</a></li>
		<li><a href = "rulesandregulation.jsp">Rules</a></li>
		<li><a href = "adminLogin.jsp">Admin</a></li>
	</ul>
      </ul>
    </div>
  </div>
</nav>

<div class="jumbotron text-center"></div>

		
	<div id="myCarousel" class="carousel slide container-fluid" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
			<li data-target="#myCarousel" data-slide-to="5"></li>
			<li data-target="#myCarousel" data-slide-to="6"></li>
		</ol>
		<div style = "margin:auto;" class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="images/a.jpg" style = "width:100%; height:450px;" />
			</div>
		
			<div class="item">
				<img src="images/b.jpg" style = "width:100%; height:450px;"  />
			</div>
		
			<div class="item">
				<img src="images/c.jpg" style = "width:100%; height:450px;" />
			</div>
		
			<div class="item">
				<img src="images/d.jpg" style = "width:100%; height:450px;" />
			</div>
			
			<div class="item">
				<img src="images/e.jpg" style = "width:100%; height:450px;" />
			</div>
			
			<div class="item">
				<img src="images/f.jpeg" style = "width:100%; height:450px;" />
			</div>
			
			<div class="item">
				<img src="images/g.png" style = "width:100%; height:450px;" />
			</div>
			
			
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>	
	</div>
</body>
<script src = "js/jquery.js"></script>
<script src = "js/bootstrap.js"></script>	
</html>