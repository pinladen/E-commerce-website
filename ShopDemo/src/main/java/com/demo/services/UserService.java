package com.demo.services;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.demo.entities.User;

public interface UserService extends UserDetailsService{
	
	// Singel user
	public User findById(int id);
	
	public User save(User user);
	
	public void delete(int id);
	
	public User findByUsername(String username);
	
	// List User
	public Iterable<User> findAll();
	
	public Iterable<User> findByStatus(boolean status);
	
	
	
	// Count list User
	
	public long CountAllUser();
	
	public long CountUserByStatus(boolean status);
		
}
