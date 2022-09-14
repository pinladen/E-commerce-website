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



@Controller
@RequestMapping(value = {"user/category"})
public class CategoryController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	
	
	@RequestMapping(value ="", method = RequestMethod.GET)
	public String category(@RequestParam("category_id")int categoryId,@RequestParam("keyword")String keyword,@RequestParam("sort_by")String sort_by, ModelMap modelMap  ) {
		System.out.println("categoryId : " + categoryId  );
		System.out.println("keyword : " + keyword  );
		// categoryId 
		if(categoryId == 0 ) {
			// keyword
			System.out.println("bi sao ak");
			
			if (keyword.isEmpty() || keyword == null) {
				 //sort_By
				if(sort_by.isEmpty() ||sort_by == null) {
					System.out.println("sortBy : all " );
					modelMap.addAttribute("products", productService.findAllByInOrder());		
				}else if(sort_by.equalsIgnoreCase("priceLH")) {
					System.out.println("sortBy : priceLH " );
					modelMap.addAttribute("products", productService.findAllByPriceAsc());
				}else if(sort_by.equalsIgnoreCase("priceHL")) {
					System.out.println("sortBy : priceHL " );
					modelMap.addAttribute("products", productService.findAllByPriceDest());
				}
				modelMap.addAttribute("categoryId", categoryId);
				modelMap.addAttribute("keyword", keyword);
		    } else {
		    	if(sort_by.isEmpty() ||sort_by == null) {
					modelMap.addAttribute("products", productService.findByKeyword(keyword));		
				}else if(sort_by.equalsIgnoreCase("priceLH")) {
					System.out.println("sortBy : priceLH " );
					modelMap.addAttribute("products", productService.findByKeywordOrderPriceAsc(keyword));
				}else if(sort_by.equalsIgnoreCase("priceHL")) {
					System.out.println("sortBy : priceHL " );
					modelMap.addAttribute("products", productService.findByKeywordOrderPriceDesc(keyword));
				}
				modelMap.addAttribute("categoryId", categoryId);
				modelMap.addAttribute("keyword", keyword);
		    }
		}else {
			if (keyword.isEmpty() || keyword == null) {
				 //sort_By
				if(sort_by.isEmpty() ||sort_by == null) {
					modelMap.addAttribute("products", productService.findByCategoryId(categoryId));		
				}else if(sort_by.equalsIgnoreCase("priceLH")) {
					System.out.println("sortBy : priceLH " );
					modelMap.addAttribute("products", productService.findByCategoryIdOrderPriceAsc(categoryId));
				}else if(sort_by.equalsIgnoreCase("priceHL")) {
					System.out.println("sortBy : priceHL " );
					modelMap.addAttribute("products", productService.findByCategoryIdOrderPriceDesc(categoryId));
				}
				modelMap.addAttribute("categoryId", categoryId);
				modelMap.addAttribute("keyword", keyword);
		    } else {
		    	if(sort_by.isEmpty() ||sort_by == null) {
					modelMap.addAttribute("products", productService.findByCategoryIdAndKeyword(categoryId,keyword));		
				}else if(sort_by.equalsIgnoreCase("priceLH")) {
					System.out.println("sortBy : priceLH " );
					modelMap.addAttribute("products", productService.findByCategoryIdAndKeywordOrderPriceAsc(categoryId, keyword));
				}else if(sort_by.equalsIgnoreCase("priceHL")) {
					System.out.println("sortBy : priceHL " );
					modelMap.addAttribute("products", productService.findByCategoryIdAndKeywordOrderPriceDesc(categoryId,keyword));
				}
		    	modelMap.addAttribute("categoryId", categoryId);
				modelMap.addAttribute("keyword", keyword);
		    }
		}
		if(categoryId !=0) {
			modelMap.put("category", categoryService.findById(categoryId));
		}
		return "user/category/index";
	}
	
	@RequestMapping(value = {"{id}"}, method = RequestMethod.GET)
	public String findByCategoryId(@PathVariable("id")int id, ModelMap modelMap) {
		modelMap.put("products", productService.findByCategoryId(id));
		modelMap.put("categories", categoryService.findByStatus(true));
		modelMap.put("category", categoryService.findById(id));
		modelMap.addAttribute("categoryId", id);
		modelMap.addAttribute("keyword","" );
		return "user/category/index";
	}

	
}
