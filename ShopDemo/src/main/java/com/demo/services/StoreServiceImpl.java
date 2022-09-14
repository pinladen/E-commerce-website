package com.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.entities.Store;
import com.demo.repositories.StoreRepository;

@Service
public class StoreServiceImpl implements StoreService{

	@Autowired
	private StoreRepository storeRepository;

	@Override
	public Iterable<Store> findAll() {
		// TODO Auto-generated method stub
		return storeRepository.findAll();
	}

	@Override
	public Store findById(int id) {
		// TODO Auto-generated method stub
		return storeRepository.findById(id).get();
	}

	@Override
	public Store save(Store store) {
		// TODO Auto-generated method stub
		return storeRepository.save(store);
	}

	@Override
	public void delete(int id) {
		storeRepository.deleteById(id);
	}

	@Override
	public Store findByName(String name) {
		// TODO Auto-generated method stub
		return storeRepository.findByName(name);
	}

	
	
	
}
