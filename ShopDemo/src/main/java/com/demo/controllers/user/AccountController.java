package com.demo.controllers.user;

import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.entities.User;
import com.demo.services.RoleService;
import com.demo.services.UserService;
import com.demo.validators.UserValidator;

@Controller
@RequestMapping("account")
public class AccountController {
	
	@Autowired
	private UserValidator userValidator;
	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(@RequestParam(value = "error", required = false) String error ,
			@RequestParam(value = "logout", required = false) String logout,ModelMap modelMap) {
		if(error !=null) {
			modelMap.put("error", "Looks like these are not your correct details. Please try again.");
		}
		if(logout != null) {
			modelMap.put("success", "Logout Successfully");
		}
		return "account/login";
	}
	
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register(ModelMap modelMap) {
		modelMap.put("user",new User());
		return "account/register";
	}
	
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(@ModelAttribute("user") @Valid User user ,ModelMap modelMap, BindingResult bindingResult) {
		if(user.getUsername() ==null) {
			System.out.println("username null : " + user.getUsername());
		}		
		userValidator.validate(user, bindingResult);
		if(bindingResult.hasErrors()) {
			return "account/register";
		}else {
			String hash = new BCryptPasswordEncoder().encode(user.getPassword());
			user.setPassword(hash);
			user.setCreated(new Date());
			user.getRoles().add(roleService.findById(5));
			user.setStatus(true);
			userService.save(user);
			return "redirect:/account/login";
		}
	}
	
	@RequestMapping(value = "accessDenied", method = RequestMethod.GET)
	public String welcome() {
		return "account/accessDenied";
	}
}
