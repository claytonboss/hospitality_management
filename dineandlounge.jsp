<!DOCTYPE html>
<html lang = "en" ng-app="myApp">
	<head>
		<title>Hotel Online Reservation</title>
		<meta charset = "utf-8" />
		<meta name = "viewport" content = "width=device-width, initial-scale=1.0" />
		<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css " />
		<link rel = "stylesheet" type = "text/css" href = "css/style.css" />
	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular-animate.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/underscore.js/1.7.0/underscore-min.js"></script>
    <script>
    angular.module('myApp', ['ngAnimate']);

    angular.module('myApp')
    .controller('myController', function ($scope) {
      
      $scope.inventory = [
        { id :  1, category : "Water ", 		  description : "small water bottle",   price :   2.99, qty : 1 },
        { id :  2, category : "Soft Drink ", 	  description : "Cola/ Limona/ GC",   price :   3.00, qty : 1, onSale : true },
        { id :  3, category : "Starters ",   	  description : "paneer tikka",     price :   5.00, qty : 1 },
        { id :  4, category : "Starters ",   	  description : "paneer kebab",       price :  5.00, qty : 1 },
        { id :  5, category : "Starters ",     	  description : "chicken chilli",          price :  10.00, qty : 1 },
        { id :  6, category : "Starters ",        description : "chicken tikka",            price :  10.00, qty : 1 },
        { id :  7, category : "Main Course ", 	  description : "Veg Fried Rice",  price :  9.99, qty : 1 },
        { id :  8, category : "Main Course ", 	  description : "Dal Makhni",  price :  10.99, qty : 1 },
        { id :  9, category : "Main Course ",     description : "Rice",        price : 10.99, qty : 1 },
        { id : 10, category : "Main Course ",     description : "Chicken Gravy",   price : 10.99, qty : 1 },
        { id : 11, category : "Desserts",         description : "Rasgulla",        price : 5.99, qty : 1 },
        { id : 12, category : "Desserts",         description : "Laddoos",        price : 6.99, qty : 1 }
      ];
      
      $scope.cart = [];
      
      var findItemById = function(items, id) {
        return _.find(items, function(item) {
          return item.id === id;
        });
      };
      
      $scope.getCost = function(item) {
        return item.qty * item.price;
      };

      $scope.addItem = function(itemToAdd) {
        var found = findItemById($scope.cart, itemToAdd.id);
        if (found) {
          found.qty += itemToAdd.qty;
        }
        else {
          $scope.cart.push(angular.copy(itemToAdd));}
      };
      
      $scope.getTotal = function() {
        var total =  _.reduce($scope.cart, function(sum, item) {
          return sum + $scope.getCost(item);
        }, 0);
        console.log('total: ' + total);
        return total;
      };
      
      $scope.clearCart = function() {
        $scope.cart.length = 0;
      };
      
      $scope.removeItem = function(item) {
        var index = $scope.cart.indexOf(item);
        $scope.cart.splice(index, 1);
      };
      
    });

    </script>
    <style>
    	body {
  margin: 20px;
  padding: 20px 40px;
  background-color: #ffffff;
    background-image: url("data:image/svg+xml,%3Csvg width='80' height='88' viewBox='0 0 80 88' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22 21.91V26h-2c-9.94 0-18 8.06-18 18 0 9.943 8.058 18 18 18h2v4.09c8.012.722 14.785 5.738 18 12.73 3.212-6.99 9.983-12.008 18-12.73V62h2c9.94 0 18-8.06 18-18 0-9.943-8.058-18-18-18h-2v-4.09c-8.012-.722-14.785-5.738-18-12.73-3.212 6.99-9.983 12.008-18 12.73zM54 58v4.696c-5.574 1.316-10.455 4.428-14 8.69-3.545-4.262-8.426-7.374-14-8.69V58h-5.993C12.27 58 6 51.734 6 44c0-7.732 6.275-14 14.007-14H26v-4.696c5.574-1.316 10.455-4.428 14-8.69 3.545 4.262 8.426 7.374 14 8.69V30h5.993C67.73 30 74 36.266 74 44c0 7.732-6.275 14-14.007 14H54zM42 88c0-9.94 8.06-18 18-18h2v-4.09c8.016-.722 14.787-5.738 18-12.73v7.434c-3.545 4.262-8.426 7.374-14 8.69V74h-5.993C52.275 74 46 80.268 46 88h-4zm-4 0c0-9.943-8.058-18-18-18h-2v-4.09c-8.012-.722-14.785-5.738-18-12.73v7.434c3.545 4.262 8.426 7.374 14 8.69V74h5.993C27.73 74 34 80.266 34 88h4zm4-88c0 9.943 8.058 18 18 18h2v4.09c8.012.722 14.785 5.738 18 12.73v-7.434c-3.545-4.262-8.426-7.374-14-8.69V14h-5.993C52.27 14 46 7.734 46 0h-4zM0 34.82c3.213-6.992 9.984-12.008 18-12.73V18h2c9.94 0 18-8.06 18-18h-4c0 7.732-6.275 14-14.007 14H14v4.696c-5.574 1.316-10.455 4.428-14 8.69v7.433z' fill='%23896800' fill-opacity='0.4' fill-rule='evenodd'/%3E%3C/svg%3E");
    color: #000000;
    padding: 80px 25px;
 font-family: "Playfair Display"; font-size: 20px; font-style: italic; font-variant: normal; font-weight: 700; line-height: 27.5px;
}
h1 {
  text-align: center;
}

h4 {
  text-align: center;
}

.table {
  width: 600px;
}

.on-sale {
  color: red;
}

.qty {
  width: 60px;
}

.animate-repeat2 {
  line-height:40px;
  list-style:none;
  box-sizing:border-box;
}

.animate-repeat2.ng-move,
.animate-repeat2.ng-enter,
.animate-repeat2.ng-leave {
  -webkit-transition:all linear 0.5s;
  transition:all linear 0.5s;
}

.animate-repeat2.ng-leave.ng-leave-active,
.animate-repeat2.ng-move,
.animate-repeat2.ng-enter {
  opacity:0;
  max-height:0;
}

.animate-repeat2.ng-leave,
.animate-repeat2.ng-move.ng-move-active,
.animate-repeat2.ng-enter.ng-enter-active {
  opacity:1;
  max-height:40px;
}
    </style>
	</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"  ng-controller="myController">

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
		<li><a href = "gallery.jsp">Gallery</a></li>
		<li class="active"><a href = "dineandlounge.jsp">Dine and Lounge</a></li>			
		<li><a href = "reservation.jsp">Reservation</a></li>
		<li><a href = "rulesandregulation.jsp">Rules</a></li>
		<li><a href = "adminLogin.jsp">Admin</a></li>
	</ul>
      
    </div>
  </div>
</nav>
<br/><br/>
	<div style = "margin-left:0;" class = "container">
	<center>
		<div class = "panel panel-default" style="width:90%; margin-left: auto;margin-right: auto;">
			<div class = "panel-body">
				<strong><h3><u>Dine & Lounge</u></h3></strong>
				<br />
				
    
    <h1>Welcome to Clayton's Restaurant</h1>
    <br/>
    <h4>Filtering input: <input type="text" ng-model="searchText"></h4>
    <br/>
    <div class="row">
      <table class="table col-md-9 col-md-offset-3">
        <tr>
          <th>Category</th>
          <th>Description</th>
          <th>Price</th>
          <th class="qty">Qty</th>
          <th>Total</th>
        </tr>
        <tr class="animate-repeat" ng-repeat="item in inventory | filter:searchText | orderBy:'category' ">
          <td>{{ item.category }}</td>
          <td>{{ item.description }}</td>
          <td ng-class="{ 'on-sale' : item.onSale }">{{ item.price | currency }}</td>
          <td><input type="number" ng-model="item.qty" class="qty"></td>
          <td>{{ item.qty * item.price | currency }}</td>
          <td>
            <button class="btn-primary" ng-click="addItem(item)">Add to Cart</button></td>
        </tr>
      </table>
    </div>
    <div class="row">
      <h2>Your Cart:</h2>
      <ul>
        <li class="animate-repeat" ng-repeat="item in cart | orderBy:'category'">
          <span>{{ item.qty + ' x ' + item.description + ' = ' + (getCost(item) | currency) }}</span>
          <button class="btn-danger btn-xs" ng-click="removeItem(item);">Remove Item</button>
          </br>
          </br>
        </li>
      </ul>
      <h3>Total: {{ getTotal() | currency }}</h3>
      <button class="btn-danger" ng-click="clearCart();">Clear Cart</button>
      <form action="EmailSendingServlet" method="post">
        <table border="0" width="35%" align="center">
            <caption><h2>Enter Your Mail Id for the Bill</h2></caption>
            <tr>
                <td width="50%">Recipient address </td>
                <td><input type="text" name="recipient" size="50" placeholder="Mail Id"/></td>
            </tr>
            <tr>
                <td>Subject </td>
                <td><input type="text" name="subject" size="50" value="Your Bill" disabled/></td>
            </tr>
            <tr>
                <td>Content </td>
                <td><textarea rows="10" cols="39" name="content">

      ----Grand Total: {{ getTotal() | currency }} ----</textarea> </td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Send Bill" class="btn-success"/></td>
            </tr>
        </table>
         
    </form>
      
    </div>

			</div>
		</div>
	</div>
</body>
<script src = "js/jquery.js"></script>
<script src = "js/bootstrap.js"></script>	
</html>