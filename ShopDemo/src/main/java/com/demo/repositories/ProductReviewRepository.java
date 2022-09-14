package com.demo.repositories;


import org.springframework.data.repository.CrudRepository;

import org.springframework.stereotype.Repository;

import com.demo.entities.ProductReview;

@Repository
public interface ProductReviewRepository extends CrudRepository<ProductReview, Integer>{
	
	
	
}
