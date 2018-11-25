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
                                margin-left: -8px;
                                width:101%;
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
           .footer {
   
   left: 0;
   bottom: 0;
   background-color: #3c3d41;
   text-align: center;
   margin-left: -8px;
   margin-right: 20px;
   float:right;
   height:100px;
   width:102%;
}
			</style>
</head>

<body>
    <% 
    if(session.getAttribute("email")!=null){
    %>
		<div id="titleborder">
        <h1 style="display:inline;font-size: 300%"><span style="color:#f3c500">QU</span><span style="color:#01a185">IKR</span> - </h1><h4 style="display:inline">An Online Buying and Selling Platform.!</h4>
		<form style = "display: inline;float:right;margin:20px;" method="get">
				 <a href="post-ad1.jsp " style="text-decoration:none;font-weight: bold;font-size:20px;">Post An Ad</a>
	        </form>
	</div>
		<ul>
		  <li><a class="active" >Home</a></li>
                  <li><a>
                      <%=
                           session.getAttribute("email").toString()
                      %>
                      </a></li>
                      <li><a class ="active" href="LogOutValidator">LogOut</a></li>
                    
                      
		  <li style="float:right"><a href="#about">About</a></li>
		  <li style="float:right"><a href="#contact">Contact</a></li>
		</ul>
		
	

	<div id="indexcontentborder">
	<script src="accordion.js">
	</script>	
	<br>
	<hr>	
		<h3	style="display:inline">Categories: <h4 style="display:inline">Select what you want to buy.?</h4></h3>
		<table>
				<tr><td><a class="active" href="#home"><h3>Categories</h3></a></td></tr>
				<tr><td><a href="Furniture.jsp"><h4>Furniture</h4></a></td></tr>
				<tr><td><a href="bike.jsp"><h4>Bikes</h4></a></td></tr>
				<tr><td><a href="electronic.jsp"><h4>Electronics and Appliances</h4></a></td></tr>
				<tr><td><a href="mobiles.jsp"><h4>Mobiles</h4></a></td></tr>
				<tr><td><a href="real.jsp"><h4>Real, Estate</h4></a></td></tr>
				<tr><td><a href="car.jsp"><h4>Cars</h4></a></td></tr>
		</table>
	
	</div>
	 <div class="footer">
                                            <hr> <p><h2 style="color:#f3c500;display: inline;">QU</h2><h2 style="color:#01a185;display: inline;">IKR</h2><br><br>© 2018 Quick Sale. All Rights Reserved</p>
                                         </div>
                      <%
                          }
                          else{
                                 response.sendRedirect("login1.html"); 
                                  }
                      
                      %>
</body>
</html>