package com.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.entities.ProductReview;
import com.demo.entities.Role;
import com.demo.repositories.ProductReviewRepository;
import com.demo.repositories.RoleRepository;

@Service
public class ProductReviewServiceImpl implements ProductReviewService{
	
	@Autowired
	private ProductReviewRepository productReviewRepository;

	@Override
	public Iterable<ProductReview> findAll() {
		// TODO Auto-generated method stub
		return productReviewRepository.findAll();
	}

	@Override
	public ProductReview findById(int id) {
		// TODO Auto-generated method stub
		return productReviewRepository.findById(id).get();
	}

	@Override
	public ProductReview save(ProductReview productReview) {
		// TODO Auto-generated method stub
		return productReviewRepository.save(productReview);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		productReviewRepository.deleteById(id);
	}

	
	

}
