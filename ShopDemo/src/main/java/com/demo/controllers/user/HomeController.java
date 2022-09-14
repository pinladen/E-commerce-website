package com.demo.controllers.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.services.CategoryService;
import com.demo.services.ProductService;
import com.demo.services.StoreService;

@Controller
@RequestMapping(value = {"","user/home","home"})
public class HomeController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = { "", "index" }, method = RequestMethod.GET)
	public String index(ModelMap modelMap , HttpSession session  ) {
		modelMap.put("productsdaily", productService.findByCategoryIdOrderPriceDesc(3));
		modelMap.put("listProductTrending", productService.findAllByInOrder());
		modelMap.put("listProductTrending1", productService.findByCategoryIdOrderPriceDesc(2));
		modelMap.put("listProductTrending2", productService.findByCategoryIdOrderPriceDesc(3));
		modelMap.put("listProductTrending3", productService.findByCategoryIdOrderPriceDesc(4));
		modelMap.put("stores", storeService.findAll());
		session.setAttribute("categories",categoryService.findByStatus(true) );
		// =======================================================================================//
		return "user/home/index";
	}

}
