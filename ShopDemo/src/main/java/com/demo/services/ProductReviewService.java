package com.demo.services;

import com.demo.entities.ProductReview;


public interface ProductReviewService {
	public Iterable<ProductReview> findAll();
	
	public ProductReview findById(int id);
	
	public ProductReview save(ProductReview productReview);
	
	public void delete(int id);
	
	
}
