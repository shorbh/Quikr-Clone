/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import controller.Myaccount;
import javax.servlet.http.HttpServletRequest;
import controller.Myaccount;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Rajender kumar
 */
public class loginDao {
    String url = "jdbc:mysql://localhost:3306/quikr?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true";
    public boolean a = false;
   public boolean validat(String s,String s1){
       try {
           Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con = DriverManager.getConnection(url,Myaccount.uname,Myaccount.pwd);
           String q = "Select email,password from registration where email = ? and password = ?";
           PreparedStatement ps = con.prepareStatement(q);
           ps.setString(1,s);
           ps.setString(2,s1);
           ResultSet rs = ps.executeQuery();
           if(rs.next()){
               a = true;
           }
           else{
               a = false;
           }
           
       } catch (Exception ex) {
           System.out.println(ex);
       }
       return a;
   }
}
