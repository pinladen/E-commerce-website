package com.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.entities.Category;
import com.demo.repositories.CategoryRepository;

@Service
public class CategoryServiceImpl implements CategoryService{
	
	@Autowired
	private CategoryRepository categoryRepository;

	@Override
	public Iterable<Category> findAll() {
		// TODO Auto-generated method stub
		return categoryRepository.findAll();
	}

	@Override
	public Category findById(int id) {
		// TODO Auto-generated method stub
		return categoryRepository.findById(id).get();
	}

	@Override
	public Category save(Category category) {
		// TODO Auto-generated method stub
		return categoryRepository.save(category);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		categoryRepository.deleteById(id);
	}

	@Override
	public Category findByName(String name) {
		return categoryRepository.findByName(name);
	}

	@Override
	public Iterable<Category> findAllByIdDesc() {
		// TODO Auto-generated method stub
		return categoryRepository.findAllByIdDesc();
	}

	@Override
	public Iterable<Category> findAllByIdAsc() {
		// TODO Auto-generated method stub
		return categoryRepository.findAllByIdAsc();
	}

	@Override
	public Iterable<Category> findByStatus(boolean status) {
		// TODO Auto-generated method stub
		return categoryRepository.findAllByStatus(status);
	}
	
	
}
