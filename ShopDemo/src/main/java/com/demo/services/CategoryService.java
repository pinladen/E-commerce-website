package com.demo.services;

import com.demo.entities.Category;

public interface CategoryService {
	
	public Iterable<Category> findAll();
	
	public Iterable<Category> findAllByIdDesc();
	
	public Iterable<Category> findAllByIdAsc();
	
	public Iterable<Category> findByStatus(boolean status);
	
	public Category findById(int id);
	
	public Category save(Category category);
	
	public void delete(int id);
	
	public Category findByName(String name);
}
