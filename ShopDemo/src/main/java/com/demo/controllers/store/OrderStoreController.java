package com.demo.controllers.store;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.services.OrdersService;
import com.demo.services.StatusService;
import com.demo.services.UserService;


@Controller
@RequestMapping(value = "store/order")
public class OrderStoreController {
	
	@Autowired
	private UserService  userService;
	
	@Autowired
	private StatusService statusService;
	
	@Autowired
	private OrdersService ordersService;
	
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index(ModelMap modelMap , Authentication authentication) {
		modelMap.put("orderss", userService.findByUsername(authentication.getName()).getStore().getOrderses());
		modelMap.put("status", statusService.findAll());
		return "store/order/index";
	}
	
	@RequestMapping(value = "detail/{id}",method = RequestMethod.GET)
	public String detail(@PathVariable("id")int id, ModelMap modelMap) {
		modelMap.put("order", ordersService.findById(id));
		return "store/order/detail";
	}
	
	@RequestMapping(value = "status",method = RequestMethod.GET)
	public String statusSearhc(@RequestParam("status_id")int status_id, ModelMap modelMap, Authentication authentication) {
		System.out.println("status id : " + status_id);
		if(status_id == -1) {
			modelMap.put("orderss",userService.findByUsername(authentication.getName()).getStore().getOrderses());
			modelMap.put("status", statusService.findAll());
			
		}else {
			modelMap.put("orderss", ordersService.findByUserIdAndStatusId(userService.findByUsername(authentication.getName()).getUserId(),status_id));
			modelMap.put("status", statusService.findAll());	
		}
		loadData(modelMap);
		return "store/order/index";
	}
	
	@RequestMapping(value = "searchbyid",method = RequestMethod.GET)
	public String searchbyOrderid(@RequestParam("orderId")int orderId, ModelMap modelMap,Authentication authentication) {
		modelMap.put("orderss", ordersService.findByUserIdAndOrderId(userService.findByUsername(authentication.getName()).getUserId(),orderId));
		modelMap.put("status", statusService.findAll());
		loadData(modelMap);
		return "store/order/index";
	}
	
	private void loadData(ModelMap modelMap) {
		modelMap.put("allorder", ordersService.findAll());
		System.out.println("all order : " +ordersService.findAll());
		modelMap.put("ordersuccess", ordersService.findAllStatus(2));
		modelMap.put("ordercancelled", ordersService.findAllStatus(1));
		modelMap.put("orderpending", ordersService.findAllStatus(9));
		
	}
	/*
	 * //Edit order(status)
	 * 
	 * @RequestMapping(value = "orderid/{id}/status/{status}",method =
	 * RequestMethod.GET) public String chageStatus(ModelMap
	 * modelMap,@PathVariable("id")int id,@PathVariable("status")boolean status) {
	 * order order = orderService.findById(id); if(order.isStatus() != status) {
	 * order.setStatus(status); orderService.save(order); } return
	 * "redirect:/store/order/index"; }
	 */
}
