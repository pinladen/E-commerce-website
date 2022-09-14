package com.demo.validators;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.demo.entities.User;
import com.demo.services.UserService;

@Component("userValidator")
public class UserValidator implements Validator {

	@Autowired
	private UserService userService;
	
	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		User user = (User) target;
			
		//Validation username
		if(user.getUsername().length() == 0) {
			errors.rejectValue("username", "NotEmpty");
		}
		
		if(isValidUsername(user.getUsername()) == false) {
			errors.rejectValue("username", "UsernameLimit");
		}
		
		User user1 = userService.findByUsername(user.getUsername());
		if(user1 !=null) {
			errors.rejectValue("username", "account.username.exists"); 
		}
		
		
		//Validation passwrod
		if(user.getPassword( ).length() == 0 ) {
			errors.rejectValue("password", "NotEmpty");
		}
		
		if(isValidPassword(user.getPassword()) == false) {
			errors.rejectValue("password", "PasswordLimit");
		}
		
		//Validation phone
		if(isValidPhone(user.getPhone()) == false) {
			errors.rejectValue("phone", "PhoneLimit");
		}
		
	}
	
	public static boolean isValidUsername(String name)
    {
        String regex = "^[A-Za-z]\\w{5,29}$";
        // Compile the ReGex
        Pattern p = Pattern.compile(regex);
        if (name == null) {
            return false;
        }   
        Matcher m = p.matcher(name);
        return m.matches();
    }
	
	public static boolean isValidPassword(String password)
    {
        String regex = "^(?=.*[0-9])(?=.*[a-z])(?=\\S+$).{8,}$";
        // Compile the ReGex
        Pattern p = Pattern.compile(regex);
        if (password == null) {
            return false;
        }   
        Matcher m = p.matcher(password);
        return m.matches();
    }
	
	public static boolean isValidPhone(String phone)
    {
        String regex = "^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\\s\\./0-9]*$";
        // Compile the ReGex
        Pattern p = Pattern.compile(regex);
        if (phone == null) {
            return false;
        }   
        Matcher m = p.matcher(phone);
        System.out.println("m " + m.matches());
        return m.matches();
    }

}
