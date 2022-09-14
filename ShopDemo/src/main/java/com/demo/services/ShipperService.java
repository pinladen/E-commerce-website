package com.demo.services;

import com.demo.entities.Shippers;

public interface ShipperService {
	
	public Iterable<Shippers> findAll();
	
	public Iterable<Shippers> findAllByIdDesc();
	
	public Iterable<Shippers> findAllByIdAsc();
	
	public Shippers findById(int id);
	
	public Shippers save(Shippers shippers);
	
	public void delete(int id);
	
	public Shippers findByName(String name);
}
