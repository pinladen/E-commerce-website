package com.demo.services;


import com.demo.entities.Discount;

public interface DiscountService {
	
	public Iterable<Discount> findAll();
	
	public Discount findById(int id);
	
	public Discount save(Discount discount);
	
	public void delete(int id);
	
	public Discount findByName(String name);
}
