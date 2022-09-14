package com.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.entities.Discount;
import com.demo.repositories.DiscountRepository;

@Service
public class DiscountServiceImpl implements DiscountService {

	@Autowired
	private DiscountRepository discountRepository;
	
	@Override
	public Iterable<Discount> findAll() {
		// TODO Auto-generated method stub
		return discountRepository.findAll();
	}

	@Override
	public Discount findById(int id) {
		// TODO Auto-generated method stub
		return discountRepository.findById(id).get();
	}

	@Override
	public Discount save(Discount discount) {
		// TODO Auto-generated method stub
		return discountRepository.save(discount);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		discountRepository.deleteById(id);
	}

	@Override
	public Discount findByName(String name) {
		// TODO Auto-generated method stub
		return discountRepository.findByName(name);
	}

}
