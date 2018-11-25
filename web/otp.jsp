<%-- 
    Document   : otp
    Created on : 22 Nov, 2018, 10:56:02 PM
    Author     : Rajender kumar
--%>


<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="controller.Myaccount"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.otpgen"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>QUIKR-Buy & Sell</title>
    </head>
    <body>
        <%
            String email = request.getParameter("email1");
            session.setAttribute("email",email);
            String q = "select password from registration where email = ?";
            Class.forName("com.mysql.cj.jdbc.Driver");
             Connection   con = DriverManager.getConnection(Myaccount.url,Myaccount.uname,Myaccount.pwd);
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1,email);
            ResultSet rs = ps.executeQuery();
            otpgen og = new otpgen();
            if(rs.next()){
                String otp = og.gen();
                session.setAttribute("otp",otp);
                            String result;
   String from = "ssinghal.cse16@chitkarauniversity.edu.in";
   String host = "localhost";
   Properties properties = System.getProperties();
   properties.put("mail.smtp.starttls.enable", "true");
    properties.put("mail.smtp.auth", "true");
     properties.put("mail.smtp.host", "smtp.gmail.com");
     properties.put("mail.smtp.port", "587");
   

   properties.setProperty("mail.smtp.host", host);
   Session mailSession = Session.getDefaultInstance(properties,new javax.mail.Authenticator() { protected PasswordAuthentication getPasswordAuthentication() { return new PasswordAuthentication(username,password);}});
   try {
      MimeMessage message = new MimeMessage(mailSession);
      message.setFrom(new InternetAddress(from));
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(email));
      message.setSubject("Reset Quikr Password code");
      message.setText(otp);
      Transport.send(message);
      result = "Sent message successfully....";
   } 
   catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message....";
   }
            }
            else{
                System.out.print("enter registered email");
            }
        %>
        <form method = "post" action="changePassword" style="text-align:center;margin-top:100px;">
            Enter OTP : <input type="text" name ="otp1" placeholder="Enter OTP received on Email Address" style="width:300px;height:30px;border-color:yellow;border-width:1px;">
            <br>Enter New Password : <input type="password" name ="pass" placeholder="Enter New Password" style="width:300px;height:30px;border-color:yellow;border-width:1px;"> 
            <br><input type ="submit" style="height:35px;width:100px;background-color:#01a185;border-width:0px;margin-left:-3.5px;" value="Get OTP" >
        </form>
        
    </body>
</html>
