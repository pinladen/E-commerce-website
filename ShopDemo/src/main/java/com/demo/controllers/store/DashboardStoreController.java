package com.demo.controllers.store;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.demo.services.UserService;


@Controller
@RequestMapping(value={"store","store/dashboard"})
public class DashboardStoreController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = {"","index"}, method = RequestMethod.GET)
	public String index(ModelMap modelMap , Authentication authentication) {
		
		System.out.println("username : " + authentication.getName() );
		modelMap.put("store", userService.findByUsername(authentication.getName()).getStore() );
		return "store/dashboard/index";
	}
}
