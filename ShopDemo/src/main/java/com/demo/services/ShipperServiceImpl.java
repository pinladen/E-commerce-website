package com.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.demo.entities.Shippers;
import com.demo.repositories.ShippersRepository;

@Service
public class ShipperServiceImpl implements ShipperService{
	
	@Autowired
	private ShippersRepository shippersRepository;

	@Override
	public Iterable<Shippers> findAll() {
		// TODO Auto-generated method stub
		return shippersRepository.findAll();
	}

	@Override
	public Shippers findById(int id) {
		// TODO Auto-generated method stub
		return shippersRepository.findById(id).get();
	}

	@Override
	public Shippers save(Shippers shippers) {
		// TODO Auto-generated method stub
		return shippersRepository.save(shippers);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		shippersRepository.deleteById(id);
	}

	@Override
	public Shippers findByName(String name) {
		return shippersRepository.findByName(name);
	}

	@Override
	public Iterable<Shippers> findAllByIdDesc() {
		// TODO Auto-generated method stub
		return shippersRepository.findAllByIdDesc();
	}

	@Override
	public Iterable<Shippers> findAllByIdAsc() {
		// TODO Auto-generated method stub
		return shippersRepository.findAllByIdAsc();
	}
	
	
}
