package com.demo.services;

import com.demo.entities.Store;

public interface StoreService {
	
public Iterable<Store> findAll();
	
	public Store findById(int id);
	
	public Store save(Store store);
	
	public void delete(int id);
	
	public Store findByName(String name);
	
}
