package com.demo.controllers.superadmin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.entities.Shippers;

import com.demo.services.ShipperService;


@Controller
@RequestMapping(value = "superadmin/shipper")
public class ShipperSuperAdminController {

	@Autowired
	private ShipperService shipperService;
	
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("shippers", shipperService.findAll());
		return "superadmin/shipper/index";
	}
	
	@RequestMapping(value = "new",method = RequestMethod.POST)
	public String create(@RequestParam("name") String name, @RequestParam("status") int status  ,@RequestParam("cost") double cost,ModelMap modelMap) {
		if(shipperService.findByName(name)!=null) {
			modelMap.put("nameError", "This name is already in use");
			return "superadmin/shipper/index";
		}else {
			if(cost < 0 || cost > 100 ) {
				modelMap.put("percentError", "length from 0 to 100");
				return "superadmin/shipper/index";
			}
			Shippers shipper = new Shippers();
			shipper.setCompanyName(name);
			shipper.setStatus(1);
			shipper.setCost(cost);
			shipperService.save(shipper);
		}
		
		return "redirect:/superadmin/shipper/index";
	}
	
	@RequestMapping(value = "edit/{id}",method = RequestMethod.GET)
	public String edit(@PathVariable("id")int id,ModelMap modelMap) {
		modelMap.put("shipper", shipperService.findById(id));
		return "superadmin/shipper/edit";
	}
	
	@RequestMapping(value = "edit",method = RequestMethod.POST)
	public String edit(@RequestParam("name") String name, @RequestParam("status") boolean status  
			,@RequestParam("id") int id,@RequestParam("cost") double cost,ModelMap modelMap) {
		Shippers shipper = shipperService.findById(id);
		//Validate name
		if(name.length() <= 0) {
			modelMap.put("nameError", "This name is not null!");
			modelMap.put("shipper", shipper);
			System.out.println("name : is null ");
			return "superadmin/shipper/edit";				
		}else {
			// Name is data
			if(shipper.getCompanyName().equalsIgnoreCase(name)) {
				shipper.setCompanyName(name);
			}else {
				if(shipperService.findByName(name) !=null) {
					modelMap.put("nameError", "This name is already in use");
					modelMap.put("shipper", shipper);
					return "superadmin/shipper/edit";				
				}else {
					shipper.setCompanyName(name);
				}
			}
		}
		//Validate percent
		if(cost < 0 || cost >100 ) {
			modelMap.put("percentError", "length from 0 to 100");
			modelMap.put("shipper", shipper);
			return "superadmin/shipper/edit";				
		}else {
			shipper.setCost(cost);
		}
		shipper.setStatus(1);
		shipperService.save(shipper);
		return "redirect:/superadmin/shipper/index";
	}
	
	//Edit category(status)
		@RequestMapping(value = "shipperid/{id}/status/{status}",method = RequestMethod.GET)
		public String chageStatus(ModelMap modelMap,@PathVariable("id")int id,@PathVariable("status")int status) {	
			Shippers shipper = shipperService.findById(id);
			if(shipper.getStatus() != status) {
				shipper.setStatus(status);
				shipperService.save(shipper);
			}
			return "redirect:/superadmin/shipper/index";
		}
}
