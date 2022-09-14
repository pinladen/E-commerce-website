package com.demo.controllers.superadmin;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.entities.Orders;
import com.demo.entities.Status;
import com.demo.services.OrdersService;
import com.demo.services.StatusService;


@Controller
@RequestMapping(value = "superadmin/order")
public class OrderSuperAdminController {
	
	
	@Autowired
	private OrdersService ordersService;
	
	@Autowired
	private StatusService statusService;
	
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("orderss", ordersService.findAllOrderByIdDesc());
		modelMap.put("status", statusService.findAll());
		loadData(modelMap);
		return "superadmin/order/index";
	}
	
	@RequestMapping(value = "detail/{id}",method = RequestMethod.GET)
	public String detail(@PathVariable("id")int id, ModelMap modelMap) {
		modelMap.put("order", ordersService.findById(id));
		return "superadmin/order/detail";
	}
	
	@RequestMapping(value = "status",method = RequestMethod.GET)
	public String statusSearhc(@RequestParam("status_id")int status_id, ModelMap modelMap) {
		System.out.println("status id : " + status_id);
		if(status_id == -1) {
			modelMap.put("orderss", ordersService.findAllOrderByIdDesc());
			modelMap.put("status", statusService.findAll());
			
		}else {
			modelMap.put("orderss", ordersService.findAllStatus(status_id));
			modelMap.put("status", statusService.findAll());
			
		}
		loadData(modelMap);
		modelMap.put("status", statusService.findAll());
		return "superadmin/order/index";
	}
	
	@RequestMapping(value = "searchbyid",method = RequestMethod.GET)
	public String searchbyOrderid(@RequestParam("orderId")int orderId, ModelMap modelMap) {
		modelMap.put("orderss", ordersService.findAllByOrderId(orderId));
		modelMap.put("status", statusService.findAll());
		loadData(modelMap);
		return "superadmin/order/index";
	}
	
	private void loadData(ModelMap modelMap) {
		modelMap.put("allorder", ordersService.findAll());
		System.out.println("all order : " +ordersService.findAll());
		modelMap.put("ordersuccess", ordersService.findAllStatus(2));
		modelMap.put("ordercancelled", ordersService.findAllStatus(1));
		modelMap.put("orderpending", ordersService.findAllStatus(9));
		
	}
}
