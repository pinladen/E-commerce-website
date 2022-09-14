package com.demo.controllers.store;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.demo.entities.Store;
import com.demo.helpers.UploadHelper;
import com.demo.services.StoreService;
import com.demo.services.UserService;

@Controller
@RequestMapping(value = "store/store")
public class StoreStoreController {
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ServletContext servletContext;
	
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("stores", storeService.findAll());
		loadData(modelMap);
		return "store/store/index";
	}
	
	@RequestMapping(value = "detail/{id}",method = RequestMethod.GET)
	public String detail(ModelMap modelMap,@PathVariable("id")int id) {
		modelMap.put("store", storeService.findById(id));	
		modelMap.put("user", userService.findById(id));	
		return "store/store/detail";
	}
	
	@RequestMapping(value = "edit",method = RequestMethod.POST)
	public String edit(ModelMap modelMap,@ModelAttribute("user") Store store) {
		Store current = storeService.findById(store.getUserId());
		System.out.println("bi sao ak");	
		current.setName(store.getName());
		current.setAddress(store.getAddress());
		
		storeService.save(current);
		return "redirect:/store/index";
	}
	
	@RequestMapping(value = "image/edit",method = RequestMethod.POST)
	public String image(@RequestParam(value ="file")MultipartFile file , Authentication authentication) {
		Store store = storeService.findById(userService.findByUsername(authentication.getName()).getUserId());
		String filename = UploadHelper.uploadImageStore(servletContext, file);
		if(filename == null) {
			store.setImage("store.jpg");
		}else {
			store.setImage(filename);
		}
		storeService.save(store);
		return "redirect:/store/index";
	}
	
	private void loadData(ModelMap modelMap) {
		
	}

}
