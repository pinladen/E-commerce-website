package com.demo.controllers;

import java.util.Date;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;

import com.demo.entities.Image;
import com.demo.entities.Product;
import com.demo.helpers.UploadHelper;
import com.demo.services.ImageService;
import com.demo.services.ProductService;
import com.demo.services.UserService;

@Controller
@RequestMapping(value ="demo")
public class DemoController implements ServletContextAware{
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ImageService imageService;
	
	@RequestMapping(value = {"","index"}, method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("users", userService.findAll());
		modelMap.put("products", productService.findAll());
		return "demo/index";
	}
	
	
	@RequestMapping(value = "upload", method = RequestMethod.GET)
	public String upload(ModelMap modelMap) {
		modelMap.put("product", new Product());
		return "demo/upload";
	}
	
	//singleUpload
	@RequestMapping(value = "singleupload", method = RequestMethod.POST)
	public String singleUpload(@RequestParam(value ="file")MultipartFile file , ModelMap modelMap) {
		System.out.println("file name : " + file.getOriginalFilename());
		System.out.println("file type : " + file.getContentType());
		System.out.println("Size name : " + file.getSize());
		String filename = UploadHelper.uploadImageCategories(servletContext, file);
		System.out.println("filename : " + filename);
		modelMap.put("filename", filename);
		return "redirect:index";
	}
	
	//mutipleUpload
	@RequestMapping(value = "multipleupload", method = RequestMethod.POST)
	public String multipleupload(@RequestParam(value ="files") MultipartFile[] files , ModelMap modelMap) {
		if(files !=null && files.length > 0){
			for(MultipartFile file : files) {
				String filename = UploadHelper.uploadImageProducts(servletContext, file);
				System.out.println("filename : " + filename);
				Image image = new Image();
				image.setName(filename);
				image.setCreated(new Date());
				image.setProduct(productService.findById(5));
				imageService.save(image);				
			}		
		}
		
		return "redirect:index";
	}
	
	@RequestMapping(value = "new",method = RequestMethod.POST)
	public String create(@ModelAttribute("product") Product product , @RequestParam(value ="files") MultipartFile[] files) {
		System.out.println("product id : " + product.getProductId());
		if(files !=null && files.length > 0){
			for(MultipartFile file : files) {
				String filename = UploadHelper.uploadImageProducts(servletContext, file);
				System.out.println("filename : " + filename);
				Image image = new Image();
				image.setName(filename);
				image.setCreated(new Date());
				image.setProduct(productService.findById(5));
				imageService.save(image);				
			}		
		}
		
		return "redirect:index";
	}

	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
	}
}
