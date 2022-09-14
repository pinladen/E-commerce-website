package com.demo.controllers.superadmin;



import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.demo.entities.Category;
import com.demo.helpers.UploadHelper;
import com.demo.services.CategoryService;




@Controller
@RequestMapping(value = "superadmin/category")
public class CategorySuperAdminController {
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("categories", categoryService.findAllByIdDesc());
		return "superadmin/category/index";
	}
	
	@RequestMapping(value = "new",method = RequestMethod.POST)
	public String create(@RequestParam("name") String name, @RequestParam("status") boolean status  ,@RequestParam(value ="file") MultipartFile file,ModelMap modelMap) {
		System.out.println("name : " + name );
		System.out.println("name : " + status );
		System.out.println("name : " + file.getOriginalFilename());
		String filename = UploadHelper.uploadImageCategories(servletContext, file);
		System.out.println("s : " + filename );
		if(categoryService.findByName(name)!=null) {
			modelMap.put("nameerros", "This name is already in use");
			return "superadmin/category/index";
		}else {
			Category category = new Category();
			category.setName(name);
			if(filename == null) {
				category.setImage("category.jpg");
				
			}else {
				category.setImage(filename);
			}
			category.setStatus(status);
			categoryService.save(category);
		}
		
		return "redirect:/superadmin/category/index";
	}
	
	@RequestMapping(value = "edit/{id}",method = RequestMethod.GET)
	public String edit(@PathVariable("id")int id,ModelMap modelMap) {
		modelMap.put("categogy", categoryService.findById(id));
		return "superadmin/category/edit";
	}
	
	@RequestMapping(value = "edit",method = RequestMethod.POST)
	public String edit(@RequestParam("name") String name, @RequestParam("status") boolean status  ,@RequestParam("id") String id,
			@RequestParam(value ="file") MultipartFile file,ModelMap modelMap) {
		String filename = UploadHelper.uploadImageCategories(servletContext, file);
		System.out.println("id : " + id );
		Category category = categoryService.findById(Integer.parseInt(id));
		// ? Name is null
		if(name.length() <= 0) {
			modelMap.put("nameerros", "This name is not null!");
			modelMap.put("category", category);
			System.out.println("name : is null ");
			return "superadmin/category/edit";				
		}else {
			// Name is data
			if(category.getName().equalsIgnoreCase(name)) {
				category.setName(name);
			}else {
				if(categoryService.findByName(name) !=null) {
					modelMap.put("nameerros", "This name is already in use");
					modelMap.put("category", category);
					return "superadmin/category/edit";				
				}else {
					category.setName(name);
				}
			}
		}
		category.setStatus(status);
		if(filename == null) {
			category.setImage("category.jpg");
			
		}else {
			category.setImage(filename);
		}
		categoryService.save(category);
		
		return "redirect:/superadmin/category/index";
	}
	
	//Edit category(status)
		@RequestMapping(value = "categoryid/{id}/status/{status}",method = RequestMethod.GET)
		public String chageStatus(ModelMap modelMap,@PathVariable("id")int id,@PathVariable("status")boolean status) {	
			Category category = categoryService.findById(id);
			if(category.isStatus() != status) {
				category.setStatus(status);
				categoryService.save(category);
			}
			return "redirect:/superadmin/category/index";
		}
}
