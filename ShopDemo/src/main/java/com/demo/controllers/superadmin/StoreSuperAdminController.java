package com.demo.controllers.superadmin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.demo.entities.OrderDetail;
import com.demo.entities.Orders;
import com.demo.entities.Store;
import com.demo.services.OrdersService;
import com.demo.services.StoreService;
import com.demo.services.UserService;

@Controller
@RequestMapping(value = "superadmin/store")
public class StoreSuperAdminController {
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private OrdersService ordersService;
	
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("stores", storeService.findAll());
		loadData(modelMap);
		return "superadmin/store/index";
	}
	
	@RequestMapping(value = "detail/{id}",method = RequestMethod.GET)
	public String detail(ModelMap modelMap,@PathVariable("id")int id) {
		modelMap.put("store", storeService.findById(id));	
		modelMap.put("user", userService.findById(id));	
		double sale = 0 ;
		for(Orders order : ordersService.findStoreIdAndStatusId(id, 2)) {
			for(OrderDetail detail : order.getOrderDetails()) {
				sale = sale + detail.getUnitPrice();
			}
		}
		modelMap.put("sale", sale);
		modelMap.put("orders", ordersService.findAllByStoreId(id));
		
		return "superadmin/store/detail";
	}
	
	@RequestMapping(value = "edit",method = RequestMethod.POST)
	public String edit(ModelMap modelMap,@ModelAttribute("user") Store store, @RequestParam(value ="file")MultipartFile file) {
		Store current = storeService.findById(store.getUserId());
		if(file != null) {
			//String filename = UploadHelper.uploadImageStore(servletContext, file);
			//current.setImage(filename);
			System.out.println("co file");
		}else {
			System.out.println("khong co file");
		}
		
		current.setName(store.getName());
		current.setAddress(store.getAddress());
		
		storeService.save(current);
		return "superadmin/store/detail";
	}
	
	private void loadData(ModelMap modelMap) {
		
	}

}
