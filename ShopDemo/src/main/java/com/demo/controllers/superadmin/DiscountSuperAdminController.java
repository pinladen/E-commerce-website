package com.demo.controllers.superadmin;



import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.entities.Discount;

import com.demo.services.DiscountService;


@Controller
@RequestMapping(value = "superadmin/discount")
public class DiscountSuperAdminController {

	@Autowired
	private DiscountService discountService;
	
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("discounts", discountService.findAll());
		return "superadmin/discount/index";
	}
	
	@RequestMapping(value = "new",method = RequestMethod.POST)
	public String create(@RequestParam("name") String name, @RequestParam("status") boolean status  ,@RequestParam("percent") int percent,ModelMap modelMap) {
		if(discountService.findByName(name)!=null) {
			modelMap.put("nameError", "This name is already in use");
			return "superadmin/discount/index";
		}else {
			if(percent < 0 || percent > 100 ) {
				modelMap.put("percentError", "length from 0 to 100");
				return "superadmin/discount/index";
			}
			Discount discount = new Discount();
			discount.setName(name);
			discount.setStatus(status);
			discount.setDiscoutPercent(percent);
			discount.setCreated(new Date());
			discountService.save(discount);
		}
		
		return "redirect:/superadmin/discount/index";
	}
	
	@RequestMapping(value = "edit/{id}",method = RequestMethod.GET)
	public String edit(@PathVariable("id")int id,ModelMap modelMap) {
		modelMap.put("discount", discountService.findById(id));
		return "superadmin/discount/edit";
	}
	
	@RequestMapping(value = "edit",method = RequestMethod.POST)
	public String edit(@RequestParam("name") String name, @RequestParam("status") boolean status  
			,@RequestParam("id") int id,@RequestParam("percent") int percent,ModelMap modelMap) {
		Discount discount = discountService.findById(id);
		//Validate name
		if(name.length() <= 0) {
			modelMap.put("nameError", "This name is not null!");
			modelMap.put("discount", discount);
			System.out.println("name : is null ");
			return "superadmin/discount/edit";				
		}else {
			// Name is data
			if(discount.getName().equalsIgnoreCase(name)) {
				discount.setName(name);
			}else {
				if(discountService.findByName(name) !=null) {
					modelMap.put("nameError", "This name is already in use");
					modelMap.put("discount", discount);
					return "superadmin/discount/edit";				
				}else {
					discount.setName(name);
				}
			}
		}
		//Validate percent
		if(percent < 0 || percent >100 ) {
			modelMap.put("percentError", "length from 0 to 100");
			modelMap.put("discount", discount);
			return "superadmin/discount/edit";				
		}else {
			discount.setDiscoutPercent(percent);
		}
		discount.setStatus(status);
		discountService.save(discount);
		return "redirect:/superadmin/discount/index";
	}
	
	//Edit category(status)
		@RequestMapping(value = "discountid/{id}/status/{status}",method = RequestMethod.GET)
		public String chageStatus(ModelMap modelMap,@PathVariable("id")int id,@PathVariable("status")boolean status) {	
			Discount discount = discountService.findById(id);
			if(discount.isStatus() != status) {
				discount.setStatus(status);
				discountService.save(discount);
			}
			return "redirect:/superadmin/discount/index";
		}
}
