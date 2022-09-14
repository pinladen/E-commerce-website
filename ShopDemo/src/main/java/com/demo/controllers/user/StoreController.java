package com.demo.controllers.user;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.services.CategoryService;
import com.demo.services.ProductService;
import com.demo.services.StoreService;



@Controller
@RequestMapping(value = {"user/store"})
public class StoreController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private StoreService storeService;
	
	
	@RequestMapping(value ="{id}", method = RequestMethod.GET)
	public String index(@PathVariable("id")int id, ModelMap modelMap  ) {
		modelMap.put("store", storeService.findById(id));
		modelMap.put("products", productService.findAllByStoreId(id));
		return "user/store/index";
	}
	
	@RequestMapping(value ="{id}/{categoryId}", method = RequestMethod.GET)
	public String category(@PathVariable("id")int id,@PathVariable("categoryId")int categoryId, ModelMap modelMap  ) {
		modelMap.put("store", storeService.findById(id));
		if(categoryId == 0) {
			modelMap.put("products", productService.findAllByStoreId(id));
		}else {
			modelMap.put("products", productService.findAllByStoreIdAndCategoryId(id,categoryId));
		}

		return "user/store/index";
	}
	
//	@RequestMapping(value = {"{id}"}, method = RequestMethod.GET)
//	public String findByCategoryId(@PathVariable("id")int id, ModelMap modelMap) {
//		modelMap.put("products", productService.findByCategoryId(id));
//		modelMap.put("categories", categoryService.findByStatus(true));
//		modelMap.addAttribute("categoryId", id);
//		modelMap.addAttribute("keyword","" );
//		return "user/category/index";
//	}

	
}
