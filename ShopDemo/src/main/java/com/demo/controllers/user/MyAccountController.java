package com.demo.controllers.user;


import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.demo.entities.OrderDetail;
import com.demo.entities.Orders;
import com.demo.entities.ProductReview;
import com.demo.entities.Role;
import com.demo.entities.Store;
import com.demo.entities.User;
import com.demo.helpers.UploadHelper;
import com.demo.services.OrderDetailService;
import com.demo.services.OrdersService;
import com.demo.services.ProductReviewService;
import com.demo.services.ProductService;
import com.demo.services.RoleService;
import com.demo.services.StatusService;
import com.demo.services.StoreService;
import com.demo.services.UserService;


@Controller
@RequestMapping(value = {"user/myaccount"})
public class MyAccountController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private OrdersService ordersService;
	
	@Autowired
	private StatusService statusService;
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private OrderDetailService orderDetailService;
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ProductReviewService productReviewService;
	
	@Autowired
	private ServletContext servletContext;
	
	
	
	
	@RequestMapping(value = {"","index"}, method = RequestMethod.GET)
	public String index(Authentication authentication,ModelMap modelMap) {
		modelMap.put("user", userService.findByUsername(authentication.getName()));
		return "user/myaccount/index";
	}
	
	@RequestMapping(value = "password", method = RequestMethod.GET)
	public String password(Authentication authentication,ModelMap modelMap) {
		return "user/myaccount/password";
	}
	
	// change password
	@RequestMapping(value = "changepassword", method = RequestMethod.POST)
	public String changePassword(@RequestParam("currentpassword") String currentpassword,@RequestParam("newpassword") String newpassword,
			@RequestParam("confirmpassword") String confirmpassword,Authentication authentication,ModelMap modelMap) {
		User user = userService.findByUsername(authentication.getName());
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
		if(bCryptPasswordEncoder.matches(currentpassword , user.getPassword())) {
			if(newpassword.equals(confirmpassword)) {
				if(bCryptPasswordEncoder.matches(newpassword , user.getPassword())) {
					modelMap.put("error", ".The new password must not be identical to the previous one !");
				}else {
					user.setPassword(bCryptPasswordEncoder.encode(newpassword));
					userService.save(user);
					modelMap.put("success", "Password was successfully changed.");
				}
			}else {
				modelMap.put("msgerrorconfirmpassword", "Password entered is different");
			}
		}else {
			System.out.println("boolean : " + bCryptPasswordEncoder.matches(user.getPassword(), currentpassword) );
			modelMap.put("msgerrorcurrent", "Incorrect password");
		}
		return "user/myaccount/password";
	}
	
	// Changes infor user
	@RequestMapping(value = "changes", method = RequestMethod.POST)
	public String changesInfoUser(@RequestParam("fullname") String fullname,@RequestParam("email") String email,@RequestParam("phone") String phone
			,@RequestParam("address") String address,Authentication authentication,ModelMap modelMap) {
		User user = userService.findByUsername(authentication.getName());
		user.setFullname(fullname);
		user.setEmail(email);
		user.setPhone(phone);
		user.setAddress(address);
		modelMap.put("user", userService.save(user));
		return "user/myaccount/index";
	}
	
	// Changes infor user
		@RequestMapping(value = "mystore", method = RequestMethod.GET)
		public String mystore(Authentication authentication,ModelMap modelMap) {
			User user = userService.findByUsername(authentication.getName());
			int index = 0;
			for(Role role : user.getRoles()) {
				if(role.getRoleId() == 4) {
					index = 4;
					System.out.println("4");
				}
				System.out.println("role : " + role.getRoleId());
			}
			System.out.println("index" + index);
			if(index == 4) {
				return "redirect:/store/index";
			}else {
				return "user/myaccount/mystore";
			}
			
		}
	
	// Register Store
	@RequestMapping(value = "mystore/register", method = RequestMethod.POST)
	public String mystoreRegister(@RequestParam("namestore")String name,@RequestParam(value ="file") MultipartFile file,Authentication authentication,HttpSession session,ModelMap modelMap) {		
		String filename = UploadHelper.uploadImageStore(servletContext, file);
		if(storeService.findByName(name) !=null) {
			modelMap.put("msgName","Name already in use");
			return "user/myaccount/mystore";
		}else {
			User user = userService.findByUsername(authentication.getName());
			Store store = new Store();
			store.setUser(user);
			store.setName(name);
			store.setAddress(user.getAddress());
			store.setStatus(true);
			if(filename == null) {
				store.setImage("store.jpg");
			}else {
				store.setImage(filename);
			}
			store.setCreated(new Date());
			storeService.save(store);
			user.getRoles().add(roleService.findById(4));
			userService.save(user);
			session.setAttribute("msggr", "You have completed the registration, please login again !");
			return "account/login";
		}
			
	}
	
	// order history
	@RequestMapping(value = "order", method = RequestMethod.GET)
	public String orderHistory(Authentication authentication, ModelMap modelMap) {
		modelMap.put("order", ordersService.findByUserId(userService.findByUsername(authentication.getName()).getUserId()));
		return "user/myaccount/orderhistory";
	}
	
	
	// search order
	@RequestMapping(value = "order/search/{value}", method = RequestMethod.GET)
	public String orderSearch(@PathVariable("value") String value,Authentication authentication, ModelMap modelMap) {
		System.out.println("value : " + value);
		if(value.equalsIgnoreCase("all")) {
			modelMap.put("order", ordersService.findByUserId(userService.findByUsername(authentication.getName()).getUserId()));
			modelMap.put("pan", 1);
		}else if(value.equalsIgnoreCase("tocancelled")) {
			modelMap.put("order", ordersService.findByUserIdAndStatusId(userService.findByUsername(authentication.getName()).getUserId(),1));
			modelMap.put("pan", 6);
		}else if(value.equalsIgnoreCase("tocompleted")) {
			modelMap.put("order", ordersService.findByUserIdAndStatusId(userService.findByUsername(authentication.getName()).getUserId(),2));
			modelMap.put("pan", 5);
		}else if(value.equalsIgnoreCase("topay")) {
			modelMap.put("order", ordersService.findByUserIdAndStatusId(userService.findByUsername(authentication.getName()).getUserId(),9));
			modelMap.put("pan", 2);
		}else if(value.equalsIgnoreCase("toreceive")) {
			modelMap.put("order", ordersService.findByUserIdAndStatusId(userService.findByUsername(authentication.getName()).getUserId(),6));
			modelMap.put("pan", 4);
		}else if(value.equalsIgnoreCase("toship")) {
			modelMap.put("order", ordersService.findByUserIdAndStatusId(userService.findByUsername(authentication.getName()).getUserId(),8));
			modelMap.put("pan", 3);
		}
		
		return "user/myaccount/orderhistory";
	}
	
	@RequestMapping(value = "orderdetail/{id}", method = RequestMethod.GET)
	public String orderDetail(@PathVariable("id") int orderId , ModelMap modelMap) {
		modelMap.put("order", ordersService.findById(orderId));
		return "user/myaccount/orderinfomation";
	}
	
	// rating
	@RequestMapping(value = "rating", method = RequestMethod.POST)
	public String rating(@RequestParam("review") String review,@RequestParam("rating") int rating,@RequestParam("productId") int productId,
			@RequestParam("orderDetail") int orderDetail,@RequestParam("orderId") int orderId,
			Authentication authentication ,ModelMap modelMap) {
		System.out.println("rating  :" + rating);
		System.out.println("productId : " + productId);
		System.out.println("orderDetail : " + orderDetail);
		System.out.println("review :" + review);
		ProductReview productReview = new ProductReview();
		productReview.setComents(review);
		productReview.setCreated(new Date());
		productReview.setRating(rating);
		productReview.setProduct(productService.findById(productId));
		productReview.setUser(userService.findByUsername(authentication.getName()));
		System.out.println("review :" + productReview.getComents());
		System.out.println("review :" + productReview.getRating());
		System.out.println("review :" + productReview.getCreated());
		System.out.println("review :" + productReview.getProduct().getName());
		System.out.println("review :" + productReview.getUser().getFullname());
		productReviewService.save(productReview);
		OrderDetail detail = orderDetailService.findById(orderDetail);
		detail.setStatus(true);
		if(orderDetailService.save(detail) !=null) {
			System.out.println("check");
		}
		modelMap.put("order", ordersService.findById(orderId));
		return "user/myaccount/orderinfomation";
	}
	
	@RequestMapping(value = "status/cancel/{id}", method = RequestMethod.GET)
	public String orderCancel(@PathVariable("id") int orderId , ModelMap modelMap) {
		Orders orders = ordersService.findById(orderId);
		orders.setStatus(statusService.findById(1));
		ordersService.save(orders);
		return "redirect:/user/myaccount/order";
	}
}
