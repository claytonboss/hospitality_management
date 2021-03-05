<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Hotel Online Reservation</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css " />
<link rel="stylesheet" type="text/css" href="css/style.css" />
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
		<li class="active"><a href = "aboutus.jsp">About us</a></li>
		<li><a href = "contactus.jsp">Contact</a></li>
		<li><a href = "gallery.jsp">Gallery</a></li>
		<li><a href = "dineandlounge.jsp">Dine and Lounge</a></li>			
		<li><a href = "reservation.jsp">Reservation</a></li>
		<li><a href = "rulesandregulation.jsp">Rules</a></li>
		<li><a href = "adminLogin.jsp">Admin</a></li>
	</ul>
      
    </div>
  </div>
</nav>

<div class="jumbotron text-center"></div>

	<div style="margin-left: 0;" class="container">

		<div class="panel panel-default" style="width:1320px;">
			<div class="panel-body">
				<strong><h3 style="font-family: Georgia, 'Times New Roman', Times, serif;">About Us</h3></strong>

				<p style="position: relative; float: left; width: 1000px;text-align:justify-content;font-family: Georgia, 'Times New Roman', Times, serif;font-size: large;">Clayton
					Hotels is a pioneer, multiple award-winning and most trusted chain
					of economic hotels in Canada. One of the leading brands in the
					hospitality segment, Our hotels have rapidly grown in major urban and
					semi-urban cities across Canada to be an ideal choice for leisure
					and business travelers.</p>
				<img style="float: right;" src="images/about.jpg" width="250px"
					height="150px" /><br>
				<p style="position: relative; float: left; width: 1000px;text-align:justify-content;font-family: Georgia, 'Times New Roman', Times, serif;font-size: large;">Explore
					a new city in Canada with Clayton Hotels, where you can experience a
					unique blend of comfort, efficiency, convenience and affordability
					in warm, smart and interactive social spaces.</p>
				<br><br><br><br><br><br><br><br>
				<hr style="border: 1px dotted #000;" />
				<br />
				<div
					style="float: left; margin-left: 40px; width: 300px; height: 300px;">
					<center>
						<img src="images/1.jpg" width="235px" height="250px"
							style="margin-top: 5px;" />
					</center>
					<center>
						<h4 style="color: rgba(0, 255, 0, 1);">Standard</h4>
					</center>
					<center>
						<label>Small Size Bed</label> <label style="color: red;">CAD.
							2,000.00</label>
					</center>
				</div>
				<div
					style="float: left; margin-left: 40px; width: 300px; height: 300px;">
					<center>
						<img src="images/2.jpg" width="235px" height="250px"
							style="margin-top: 5px;" />
					</center>
					<center>
						<h4 style="color: rgba(0, 255, 0, 1);">Extra Bed</h4>
					</center>
					<center>
						<label style="color: red;">CAD. 800.00</label>
					</center>
				</div>
				<div
					style="float: left; margin-left: 40px; width: 300px; height: 300px;">
					<center>
						<img src="images/3.jpg" width="235px" height="250px"
							style="margin-top: 5px;" />
					</center>
					<center>
						<h4 style="color: rgba(0, 255, 0, 1);">Superior</h4>
					</center>
					<center>
						<label>1 Medium Size Bed</label> <label style="color: red;">CAD.
							2,400.00 </label>
					</center>
				</div>
				<br style="clear: both;" /> <br /><br/>
				<div
					style="float: left; margin-left: 40px; width: 300px; height: 300px;">
					<center>
						<img src="images/4.jpg" width="235px" height="250px"
							style="margin-top: 5px;" />
					</center>
					<center>
						<h4 style="color: rgba(0, 255, 0, 1);">Super Deluxe</h4>
					</center>
					<center>
						<label>2 Medium Size Bed</label> <label style="color: red;">CAD.
							2,800.00 </label>
					</center>
				</div>
				<div
					style="float: left; margin-left: 40px; width: 300px; height: 300px;">
					<center>
						<img src="images/5.jpg" width="235px" height="250px"
							style="margin-top: 5px;" />
					</center>
					<center>
						<h4 style="color: rgba(0, 255, 0, 1);">Jr. Suite</h4>
					</center>
					<center>
						<label>Matrimonial</label> <label style="color: red;">CAD.
							3,800.00 </label>
					</center>
				</div>
				<div
					style="float: left; margin-left: 40px; width: 300px; height: 300px;">
					<center>
						<img src="images/6.jpg" width="235px" height="250px"
							style="margin-top: 5px;" />
					</center>
					<center>
						<h4 style="color: rgba(0, 255, 0, 1);">Executive Suite</h4>
					</center>
					<center>
						<label>Matrimonial</label> <label style="color: red;">CAD.
							4,000.00 </label>
					</center>
				</div>
				<br style="clear: both;" /> <br /> <br /> <strong><h3>Amenities
						and Services</h3></strong>
				<ul>
					<li><label>24 Hour room service</label></li>
					<li><label>21" Flat screen TV with cable service</label></li>
					<li><label>Hot & cold shower</label></li>
					<li><label>Refrigerator and mini bar on demand in all
							suites and superior rooms</label></li>
					<li><label>Coffee & tea set, bottled water, organic
							tolletries in suites and superior rooms</label></li>
					<li><label>Hair dryer in suite rooms</label></li>
					<li><label>Personal safety boxes in every room</label></li>
					<li><label>Laundry & pressing</label></li>
					<li><label>Free use Wifi</label></li>
					<li><label>In room massage services</label></li>
					<li><label>Personal Safe in Every Room</label></li>
					<li><label>Mini Bar</label></li>
					<li><label>7 Function & Meeting Rooms</label></li>
					<li><label>Road Trip Airport Transfers & Special City
							Tour</label></li>
					<li><label>Swimming Pool</label></li>
					<li><label>Gift Shop</label></li>
					<li><label>Business Center</label></li>
					<li><label>Free Parking for Guest</label></li>
				</ul>
			</div>
		</div>
	</div>
</body>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
</html>