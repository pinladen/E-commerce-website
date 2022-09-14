package com.demo.controllers.user;


import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.entities.Item;
import com.demo.entities.OrderDetail;
import com.demo.entities.Orders;
import com.demo.entities.Product;
import com.demo.entities.Store;
import com.demo.entities.User;
import com.demo.services.OrderDetailService;
import com.demo.services.OrdersService;
import com.demo.services.ProductService;
import com.demo.services.ShipperService;
import com.demo.services.StatusService;
import com.demo.services.UserService;



@Controller
@RequestMapping(value = {"user/checkout"})
public class CheckoutController {
	
	@Autowired
	private ShipperService shipperService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private StatusService statusService;
	
	@Autowired
	private OrdersService ordersService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private OrderDetailService orderDetailService;
	
	
	@RequestMapping(value = {"","index"}, method = RequestMethod.GET)
	public String index(Authentication authentication ,ModelMap modelMap) {
		modelMap.put("user", userService.findByUsername(authentication.getName()));
		return "user/checkout/index";
	}
	
	@RequestMapping(value = "order", method = RequestMethod.GET)
	public String checkount(HttpSession session , Authentication authentication ) {
		List<Orders> orders = new ArrayList<Orders>();
		if(session.getAttribute("cart") != null) {
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			for(Item item : cart ) {
				int index = this.exists(item.getProduct().getStore().getUserId(), orders);
				if(index == -1 ) {
					// Create Orders
					Orders order = new Orders();
					order.setStore(item.getProduct().getStore());
					order.setShippers(shipperService.findById(1));
					User user = userService.findByUsername(authentication.getName());
					order.setUser(user);
					order.setCreated(new Date());
					Date dt = new Date();
					Calendar c = Calendar.getInstance(); 
					c.setTime(dt); 
					c.add(Calendar.DATE, 1);
					order.setOrderOfStart(c.getTime());
					c.setTime(dt);
					c.add(Calendar.DATE, 3);
					order.setOrderOfFinish(c.getTime());
					order.setAddress(user.getAddress());
					order.setPayment("Payment on delivery");
					order.setStatus(statusService.findById(9));
					Orders newOrder = ordersService.save(order);
					orders.add(newOrder);
					// Create order detail
					if(newOrder !=null) {
						OrderDetail orderDetail = new OrderDetail();
						orderDetail.setProduct(item.getProduct());
						orderDetail.setOrders(newOrder);
						orderDetail.setDiscount(item.getProduct().getDiscount());
						orderDetail.setNote("No Coments");
						orderDetail.setQuantity(item.getQuantity());
						orderDetail.setUnitPrice(item.getProduct().getPrice() * item.getQuantity());
						orderDetail.setStatus(false);
						orderDetailService.save(orderDetail);
						Product product = item.getProduct();
						product.setQuantity(product.getQuantity() - item.getQuantity());
						if(product.getQuantity() <=0) {
							product.setStatus(false);
						}
						product.setUnitOnOrder(product.getUnitOnOrder() + item.getQuantity());
						productService.save(product);
						session.removeAttribute("cart");
						session.setAttribute("msg", "success");
					}
				}else {
					OrderDetail orderDetail = new OrderDetail();
					orderDetail.setProduct(item.getProduct());
					orderDetail.setOrders(orders.get(index));
					orderDetail.setDiscount(item.getProduct().getDiscount());
					orderDetail.setNote("No Coments");
					orderDetail.setQuantity(item.getQuantity());
					orderDetail.setUnitPrice(item.getProduct().getPrice() * item.getQuantity());
					orderDetail.setStatus(false);
					orderDetailService.save(orderDetail);
					Product product = item.getProduct();
					product.setQuantity(product.getQuantity() - item.getQuantity());
					if(product.getQuantity() <=0) {
						product.setStatus(false);
					}
					product.setUnitOnOrder(product.getUnitOnOrder() + item.getQuantity());
					productService.save(product);
					session.removeAttribute("cart");
					session.setAttribute("msg", "success");
				}
			}
		}
		return "redirect:/user/myaccount/order";
	}
	
	private int exists(int store_id, List<Orders> orders) {
		for (int i = 0; i < orders.size(); i++) {
			if (orders.get(i).getStore().getUserId() == store_id)  {
				return i;
			}
		}
		return -1;
	}
}
