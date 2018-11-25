<%-- 
    Document   : buyProduct
    Created on : 21 Nov, 2018, 5:44:37 PM
    Author     : Rajender kumar
--%>

<%@page import="java.io.FileOutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="controller.Myaccount"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>QUIKR-Buy & Sell</title>
        <style>
            .footer {
   
   left: 0;
   bottom: 0;
   background-color: #3c3d41;
   text-align: center;
   margin-left: -8px;
   margin-right: 20px;
   height:100px;
   width:102%;
}
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
		  <li><a class="active" href="UserHome.jsp" >Home</a></li>
                  <li><a>
                      <%=
                           request.getSession().getAttribute("email").toString()
                      %>
                      </a></li>
                      <li><a class ="active" href="LogOutValidator">LogOut</a></li>
                      
                      
		  <li style="float:right"><a href="#about">About</a></li>
		  <li style="float:right"><a href="#contact">Contact</a></li>
		</ul>
                      
                      <%
                          //response.setIntHeader("Refresh", 5);
                         System.out.print(request.getParameter("tit"));
                          String s = request.getParameter("tit");
                          try{
                              Class.forName("com.mysql.cj.jdbc.Driver");
                              Connection con = DriverManager.getConnection(Myaccount.url, Myaccount.uname, Myaccount.pwd);
                              String q = "Select * from postad where Title = ?";
                              PreparedStatement ps = con.prepareStatement(q);
                              ps.setString(1,s);
                              ResultSet rs = ps.executeQuery();
                              if(rs.next()){
                                  Blob blob = rs.getBlob(4);
                                 byte byteArray[] = blob.getBytes(1,(int)blob.length());
                                 FileOutputStream fout=new FileOutputStream("C:/Users/Rajender kumar/Desktop/QUIKR/web/images1/aaa.jpg");  
                                 fout.write(byteArray); 
                                 String re = rs.getString(2);
                                 %>
                                  <table style="float:left;">
                  <tr><td>
                          <img src= <%= "images1/aaa.jpg" %>  style="width:300px;height:300px;" >&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                  <tr><td>  <h3>Title : <%= rs.getString(2) %> </h3></td></tr>
                  <tr><td>  <h3>Description : <%= rs.getString(3) %> </h3></td></tr>
                  
              </table>
                  <p><h1>Seller Information</h1><br>
                      <h3>Name of the Seller : <%= rs.getString(5) %><br></h3>
                      <h3>Phone No of the Seller : <%= rs.getString(6) %><br></h3>
                      <h3>Email of the Seller : <%= rs.getString(7) %><br></h3>
                      Note:- Contact to customer for further information about the product
                  </p>
                  
                  <%
                        fout.close();
                              }
                          }
                      catch(Exception e){
                         System.out.print(e);
                       }
                      
                      %>
                      
                      
                      
                      
                      
                      
                      
		<div class="footer" style="float:right;">
                                            <hr> <p><h2 style="color:#f3c500;display: inline;">QU</h2><h2 style="color:#01a185;display: inline;">IKR</h2><br><br>Â© 2018 Quick Sale. All Rights Reserved</p>
                                         </div>
                      <%
                          }
                          else{
                                 response.sendRedirect("login1.html"); 
                                  }
                      
                      %>
    </body>
    
</html>
