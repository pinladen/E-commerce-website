package com.demo.services;

import com.demo.entities.Role;

public interface RoleService {
	public Iterable<Role> findAll();
	
	public Role findById(int id);
	
	public Role save(Role role);
	
	public void delete(int id);
	
	
	//Count
	public long CountListByNane(String name); 
}
