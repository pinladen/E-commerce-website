 package com.demo.controllers.superadmin;


import java.util.Date;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.entities.User;
import com.demo.services.CaculateService;
import com.demo.services.OrdersService;
import com.demo.services.RoleService;

import com.demo.services.UserService;
import com.demo.validators.UserValidator;

@Controller
@RequestMapping(value = "superadmin/user")
public class UserSuperAdminController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private CaculateService caculateService;
	
	@Autowired
	private UserValidator userValidator;
	
	@Autowired
	private OrdersService ordersService;
	
	
	// FindAll
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("users", userService.findAll());
		loadData(modelMap);
		return "superadmin/user/index";
	}
	
	// FindAll
		@RequestMapping(value = "detail/{id}",method = RequestMethod.GET)
		public String detail(@PathVariable("id")int id,ModelMap modelMap) {
			modelMap.put("user", userService.findById(id));
			modelMap.put("order", ordersService.findByUserId(id));
			return "superadmin/user/detail";
		}
	
	// findByStatus(List user)
	@RequestMapping(value = "search/status/{status}",method = RequestMethod.GET)
	public String searchByStatus(ModelMap modelMap,@PathVariable("status")boolean status) {
		modelMap.put("users", userService.findByStatus(status));
		if(status == true) {
			modelMap.put("status", false);
		}else{
			modelMap.put("status", true);
		}
		loadData(modelMap);
		return "superadmin/user/index";
	}
	
	//Create user
	@RequestMapping(value = "new",method = RequestMethod.GET)
	public String create(ModelMap modelMap) {
		modelMap.put("user", new User());
		return "superadmin/user/new";
	}
	
	@RequestMapping(value = "new",method = RequestMethod.POST)
	public String create(ModelMap modelMap , @ModelAttribute("user") @Valid User user , BindingResult bindingResult) {
		userValidator.validate(user, bindingResult);
		if(bindingResult.hasErrors()) {
			return "redirect:/superadmin/user/new";
		}else {		
		String hash = new BCryptPasswordEncoder().encode(user.getPassword());
		user.setPassword(hash);
		user.setCreated(new Date());
		user.getRoles().add(roleService.findById(5));
		user.setStatus(true);
		userService.save(user);
		return "redirect:/superadmin/user/index";
		}
	}
	
	
	//Edit user
	@RequestMapping(value = "edit/{id}",method = RequestMethod.GET)
	public String edit(ModelMap modelMap,@PathVariable("id")int id) {	
		modelMap.put("user",userService.findById(id));
		return "superadmin/user/edit";
	}
	
	@RequestMapping(value = "edit",method = RequestMethod.POST)
	public String edit(ModelMap modelMap,@ModelAttribute("user") User user) {
		System.out.println("userId : " + user.getUserId());
		System.out.println("username : " + user.getUsername());
		System.out.println("fullname : " + user.getFullname());
		System.out.println("Email : " + user.getEmail());
		System.out.println("Phone : " + user.getPhone());
		System.out.println("Address : " + user.getAddress());
		System.out.println("created : " + user.getCreated());
		System.out.println("status : " + user.isStatus());
		User current = userService.findById(user.getUserId());
		current.setFullname(user.getFullname());
		current.setPhone(user.getPhone());
		current.setEmail(user.getEmail());
		current.setAddress(user.getAddress());
		userService.save(current);
		return "redirect:/superadmin/user/index";
	}
	
	//Edit user(status)
	@RequestMapping(value = "userid/{id}/status/{status}",method = RequestMethod.GET)
	public String chageStatus(ModelMap modelMap,@PathVariable("id")int id,@PathVariable("status")boolean status) {	
		User user = userService.findById(id);
		if(user.isStatus() != status) {
			user.setStatus(status);
			userService.save(user);
		}
		return "redirect:/superadmin/user/index";
	}
	
	//load data
	private void loadData(ModelMap modelMap) {
		modelMap.put("active", userService.CountUserByStatus(true));
		modelMap.put("precentCountStatusActive", caculateService.percentage(userService.CountUserByStatus(true), userService.CountAllUser()));
		modelMap.put("inactive", userService.CountUserByStatus(false));
		modelMap.put("precentCountStatusInActive", caculateService.percentage(userService.CountUserByStatus(false), userService.CountAllUser()));
		modelMap.put("coutSuperAdmin", roleService.CountListByNane("ROLE_SUPER_ADMIN"));
		modelMap.put("precentCountRoleSupperAdmin", caculateService.percentage(roleService.CountListByNane("ROLE_SUPER_ADMIN"), userService.CountAllUser()));
	}
}
