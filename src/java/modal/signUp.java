package modal;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Rajender kumar
 */
public class signUp {
    private String email;
    private String password;
    private String repassword;
    public signUp(){
    }
    public signUp(String email,String password,String repassword){
        this.email = email;
        this.password = password;
        this.repassword = repassword;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }
    public String getRepPassword(){
        return repassword;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public void setRepPassword(String repassword){
        this.repassword = repassword;
    }
}
