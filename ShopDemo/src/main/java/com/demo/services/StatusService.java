package com.demo.services;

import com.demo.entities.Status;

public interface StatusService {
	
	public Iterable<Status> findAll();
	
	public Status findById(int id);
	
	public Status save(Status status);
	
	public void delete(int id);
	
	
}
