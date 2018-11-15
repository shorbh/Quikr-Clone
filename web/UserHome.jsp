<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>BUY & SELL*</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="helper.css">
	<link rel="stylesheet" type="text/css" href="accordion.css">
	<style>
			ul {
				list-style-type: none;
				margin: 0;
				padding: 0;
				overflow: hidden;
                                
				background-color: #333;
			}

			
			li {
				float: left;
			}
			
			li a {
				display: block;
				color: white;
				text-align: center;
				padding: 14px 16px;
				font-size: 25px;
				text-decoration: none;
			}
			
			li a:hover:not(.active) {
				background-color: #111;
			}
			
			.active {
				background-color: #09235C;
			}
			#postanad{background-color: #4CAF50;}


			table {
                list-style-type: none;
                margin: 0;
                padding: 0;
                width: 25%;
                background-color: #f1f1f1;
                height: 100%;
                overflow: auto;
            }
			td a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}
td a.active {
    background-color: #09235C;
    color: white;
}

td a:hover:not(.active) {
    background-color: #555;
    color: white;
}
body{
	background-image: url("2.jpg");
}
			</style>
</head>

<body>
		
		<ul>
		  <li><a class="active" href="#home">Home</a></li>
                  <li><a>
                      <%=
                           request.getSession().getAttribute("email").toString()
	                    
                      %>
                      </a></li>
		  <li style="float:right"><a href="#about">About</a></li>
		  <li style="float:right"><a href="#contact">Contact</a></li>
		</ul>
		
	<div id="titleborder">
		<h1 style="display:inline">QUIKR - </h1><h4 style="display:inline">An Online Buying and Selling Platform.!</h4>
		<form style = "display: inline;float:right;margin:20px;" method="get">
				 <a href="post-ad1.html " style="text-decoration:none;font-weight: bold;font-size:20px;">Post An Ad</a>
			</form>
	</div>

	<div id="indexcontentborder">
	<script src="accordion.js">
	</script>	
	<br>
	<hr>	
		<h3	style="display:inline">Categories: <h4 style="display:inline">Select what you want to buy.?</h4></h3>
		<table>
				<tr><td><a class="active" href="#home"><h3>Categories</h3></a></td></tr>
				<tr><td><a href="#news"><h4>Stationery</h4></a></td></tr>
				<tr><td><a href="#contact"><h4>Lab Equipments</h4></a></td></tr>
				<tr><td><a href="#about"><h4>Electronics</h4></a></td></tr>
				<tr><td><a href="#about"><h4>Mobiles</h4></a></td></tr>
				<tr><td><a href="#about"><h4>Sports/Hobbies</h4></a></td></tr>
				<tr><td><a href="#about"><h4>Cycles/Bikes</h4></a></td></tr>
		</table>
	
	</div>
	
</body>
</html>