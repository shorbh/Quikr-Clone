
package modal;
import java.util.*;
  
public class otpgen 
{ 
    public String gen()
    { 
        String numbers = "0123456789"; 
        int length = 4; 
        Random rndm_method = new Random(); 
  
        char[] otp = new char[length]; 
  
        for (int i = 0; i < length; i++) 
        { 
            otp[i] = 
             numbers.charAt(rndm_method.nextInt(numbers.length())); 
        } 
        String string = new String(otp);
        return string; 
    } 
} 