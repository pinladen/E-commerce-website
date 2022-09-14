package com.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.entities.Category;
import com.demo.entities.Status;
import com.demo.repositories.CategoryRepository;
import com.demo.repositories.StatusRepository;

@Service
public class StatusServiceImpl implements StatusService{
	
	@Autowired
	private StatusRepository  statusRepository;

	@Override
	public Iterable<Status> findAll() {
		// TODO Auto-generated method stub
		return statusRepository.findAll();
	}

	@Override
	public Status findById(int id) {
		// TODO Auto-generated method stub
		return statusRepository.findById(id).get();
	}

	@Override
	public Status save(Status status) {
		// TODO Auto-generated method stub
		return statusRepository.save(status);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		statusRepository.deleteById(id);
	}


	
	
}
