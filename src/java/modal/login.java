/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modal;

/**
 *
 * @author Rajender kumar
 */
public class login {
    private String email;
    private String pwd;
   public login(){}
    public login(String email,String pwd){
        this.email = email;
        this.pwd = pwd;
    }
    public String getEmail(){
        return email;
    }
    public String getPassword(){
        return pwd;
    }
    public void setEmail(String email){
        this.email = email;
    }
    public void setPassword(String pwd){
        this.pwd = pwd;
    }
    public boolean equals(Object o){
        login l = (login)o;
        if(email.equals(l.getEmail())&& pwd.equals(l.getPassword())){
            return true;
        }
        else return false;
    }
}
