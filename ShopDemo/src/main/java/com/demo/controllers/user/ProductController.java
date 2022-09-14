package com.demo.controllers.user;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.services.CategoryService;
import com.demo.services.ProductService;



@Controller
@RequestMapping(value = {"user/product"})
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value = {"{id}"}, method = RequestMethod.GET)
	public String index(ModelMap modelMap,@PathVariable("id") int id) {
		modelMap.put("product", productService.findById(id));
		modelMap.put("products", productService.findAllByStoreId(productService.findById(id).getStore().getUserId()));
		modelMap.put("productsRelated", productService.findByCategoryId(productService.findById(id).getCategory().getCategoryId()));
		modelMap.put("categories", categoryService.findByStatus(true));
		return "user/product/index";
	}
}
