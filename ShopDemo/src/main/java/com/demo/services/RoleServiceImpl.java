package com.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.entities.Role;
import com.demo.repositories.RoleRepository;

@Service
public class RoleServiceImpl implements RoleService{
	
	@Autowired
	private RoleRepository roleRepository;

	@Override
	public Iterable<Role> findAll() {
		// TODO Auto-generated method stub
		return roleRepository.findAll();
	}

	@Override
	public Role findById(int id) {
		// TODO Auto-generated method stub
		return roleRepository.findById(id).get();
	}

	@Override
	public Role save(Role role) {
		// TODO Auto-generated method stub
		return roleRepository.save(role);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		roleRepository.deleteById(id);
	}

	@Override
	public long CountListByNane(String name) {
		// TODO Auto-generated method stub
		return roleRepository.countUserByStatus(name);
	}
	
	

}
