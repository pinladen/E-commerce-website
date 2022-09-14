package com.demo.controllers.superadmin;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = {"superadmin","superadmin/dashboard"})
public class DashboardSuperAdminController {
	
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index() {
		return "superadmin/dashboard/index";
	}
}
