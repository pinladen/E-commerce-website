package com.demo.controllers.superadmin;




import java.util.Date;


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

import com.demo.entities.Image;
import com.demo.entities.Product;
import com.demo.entities.User;
import com.demo.helpers.UploadHelper;
import com.demo.services.CategoryService;
import com.demo.services.DiscountService;
import com.demo.services.ImageService;
import com.demo.services.ProductService;
import com.demo.services.StoreService;
import com.demo.services.UserService;



@Controller
@RequestMapping(value = "superadmin/product")
public class ProductSuperAdminController {
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private DiscountService discountService;
	
	@Autowired
	private ImageService imageService;
	
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("products", productService.findAll());
		modelMap.put("categories", categoryService.findAll());
		loadData(modelMap);
		return "superadmin/product/index";
	}
	
	@RequestMapping(value = "searchByCategoryId",method = RequestMethod.GET)
	public String searchByCategoryId(@RequestParam("categoryId") int categoryId, ModelMap modelMap) {
		modelMap.put("products", productService.findAllCategoryId(categoryId));
		modelMap.put("categories", categoryService.findAll());
		loadData(modelMap);
		return "superadmin/product/index";
	}
	
	@RequestMapping(value = "searchByProductId",method = RequestMethod.GET)
	public String searchByProductId(@RequestParam("productId") int productId, ModelMap modelMap) {
		modelMap.put("products", productService.findAllByProductId(productId));
		modelMap.put("categories", categoryService.findAll());
		loadData(modelMap);
		return "superadmin/product/index";
	}
	
	@RequestMapping(value = "searchByStatus",method = RequestMethod.GET)
	public String searchByStatus(@RequestParam("status") boolean status, ModelMap modelMap) {
		modelMap.put("products", productService.findAllByStatus(status));
		modelMap.put("categories", categoryService.findAll());
		loadData(modelMap);
		return "superadmin/product/index";
	}
	
	// Product new
	@RequestMapping(value = "new",method = RequestMethod.GET)
	public String category(ModelMap modelMap) {
		modelMap.put("product", new Product());
		modelMap.put("categories", categoryService.findAll());
		modelMap.put("discounts", discountService.findAll());
		return "superadmin/product/new";
	}
	
	@RequestMapping(value = "new",method = RequestMethod.POST)
	public String create(@ModelAttribute("product") Product product  ,@RequestParam("categoryId") int categoryId ,@RequestParam("discountId") int discountId,
			@RequestParam(value ="files") MultipartFile[] files ,  Authentication authentication ) {
		// Product set
		User user = userService.findByUsername(authentication.getName());
		product.setCategory(categoryService.findById(categoryId));
		product.setStore(storeService.findById(user.getUserId()));
		product.setDiscount(discountService.findById(discountId));
		// auto set
		product.setUnitOnOrder(0);
		product.setStatus(true);
		product.setCreated(new Date());
		// Save
		Product productnew = productService.save(product);
		
		// image new
		if(files !=null && files.length > 0){
			for(MultipartFile file : files) {
				String filename = UploadHelper.uploadImageProducts(servletContext, file);
				System.out.println("filename : " + filename);
				Image image = new Image();
				image.setName(filename);
				image.setCreated(new Date());
				image.setProduct(productnew);
				imageService.save(image);				
			}		
		}
		return "redirect:/superadmin/product/index";
	}
	
	
	//edit
	
	@RequestMapping(value = "edit/{id}",method = RequestMethod.GET)
	public String edit(@PathVariable("id")int id , ModelMap modelMap) {
		modelMap.put("product", productService.findById(id));
		modelMap.put("categories", categoryService.findAll());
		modelMap.put("discounts", discountService.findAll());
		return "superadmin/product/edit";
	}
	
	@RequestMapping(value = "edit",method = RequestMethod.POST)
	public String edit(@ModelAttribute("product") Product product  ,@RequestParam("categoryId") int categoryId ,@RequestParam("discountId") int discountId,
			@RequestParam(value ="files") MultipartFile[] files ,  Authentication authentication ) {
		
		System.out.println("product name : " + product.getName());
		// Product set
		Product accent = productService.findById(product.getProductId());
		accent.setName(product.getName());
		accent.setContent(product.getContent());
		accent.setAddress(product.getAddress());
		accent.setBrand(product.getBrand());
		accent.setPrice(product.getPrice());
		accent.setQuantity(product.getQuantity());
		if(categoryId != 0) {
			accent.setCategory(categoryService.findById(categoryId));
		}
		if(discountId != 0) {
			accent.setDiscount(discountService.findById(discountId));
		}		
		// Save
		Product product2 = productService.save(accent);
		System.out.println("files size " + files.length);
		// image new
		if(files !=null && files.length > 1){
			if(product2.getImages().size() > 0) {
				for(Image image : product2.getImages())
					imageService.delete(image.getImageId());
			}
			for(MultipartFile file : files) {
				String filename = UploadHelper.uploadImageProducts(servletContext, file);
				System.out.println("filename : " + filename);
				if(filename.length() > 0) {
					Image image = new Image();
					image.setName(filename);
					image.setCreated(new Date());
					image.setProduct(product2);
					imageService.save(image);
				}	
			}
		}
		
		return "redirect:/superadmin/product/index";
	}
	
	//Edit product(status)
		@RequestMapping(value = "productid/{id}/status/{status}",method = RequestMethod.GET)
		public String chageStatus(ModelMap modelMap,@PathVariable("id")int id,@PathVariable("status")boolean status) {	
			Product product = productService.findById(id);
			if(product.isStatus() != status) {
				product.setStatus(status);
				productService.save(product);
			}
			return "redirect:/superadmin/product/index";
		}
	
	
	@RequestMapping(value = "delete/{id}",method = RequestMethod.GET)
	public String delete(@PathVariable("id") int id) {
		Product product = productService.findById(id);
		product.getImages();
		return "superadmin/user/newuser";
	}
	
	private void loadData(ModelMap modelMap) {
		modelMap.put("allproducts", productService.findAll());
		modelMap.put("produtcsaccept", productService.findAllByStatus(true));
		modelMap.put("produtcscancell", productService.findAllByStatus(false));
		
	}
}
