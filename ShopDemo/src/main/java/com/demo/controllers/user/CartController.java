package com.demo.controllers.user;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.entities.Item;
import com.demo.services.ProductService;



@Controller
@RequestMapping(value = {"user/cart"})
public class CartController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = {"","index"}, method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		return "user/cart/index";
	}
	
	@RequestMapping(value = "addcart", method = RequestMethod.GET)
	public String addCart(@RequestParam("quantity")int quantity,@RequestParam("product_id")int product_id, ModelMap modelMap , HttpSession session) {
		if (session.getAttribute("cart") == null) {
			List<Item> cart = new ArrayList<Item>();
			cart.add(new Item(productService.findById(product_id), quantity));
			session.setAttribute("cart", cart);
		} else {
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			int index = this.exists(product_id, cart);
			if (index == -1) {
				cart.add(new Item(productService.findById(product_id), quantity));
			} else {
				int quantity1 = cart.get(index).getQuantity() + quantity ;
				cart.get(index).setQuantity(quantity1);
			}
			session.setAttribute("cart", cart);
		}		
		return "redirect:/user/product/"+product_id;
	}
	
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public String update(@RequestParam("quantity")int quantity,@RequestParam("product_id")int product_id , HttpSession session , ModelMap modelMap) {
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			if(cart.isEmpty() || cart == null) {
				return "redirect:/user/home";
			}else {
				int index = this.exists(product_id, cart);
				if (index == -1) {
					cart.add(new Item(productService.findById(product_id), quantity));
				} else {
					int quantity1 =  quantity ;
					cart.get(index).setQuantity(quantity1);
				}
				session.setAttribute("cart", cart);
				if(cart.isEmpty() || cart.size() == 0) {
					return "redirect:/user/home";
				}else {
					return "redirect:/user/cart/index";
				}
			}
	}
	
	@RequestMapping(value = "remove/{id}", method = RequestMethod.GET)
	public String remove(@PathVariable("id") int id, HttpSession session) {
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index = this.exists(id, cart);
		cart.remove(index);
		if(cart.size() == 0 || cart.isEmpty()) {
			session.removeAttribute("cart");
			return "redirect:/home/index";
		}else {
			session.setAttribute("cart", cart);
			return "redirect:/user/cart/index";
		}
	}
	
	private int exists(int product_id, List<Item> cart) {
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getProduct().getProductId() == product_id)  {
				return i;
			}
		}
		return -1;
	}
}
