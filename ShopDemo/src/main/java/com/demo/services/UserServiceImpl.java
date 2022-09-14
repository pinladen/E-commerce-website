package com.demo.services;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.demo.entities.Role;
import com.demo.entities.User;
import com.demo.repositories.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository ;

	@Override
	public Iterable<User> findAll() {
		return userRepository.findAll();
	}

	@Override
	public User findById(int id) {
		return userRepository.findById(id).get();
	}

	@Override
	public User save(User user) {
		return userRepository.save(user);
	}

	@Override
	public void delete(int id) {
		userRepository.deleteById(id);
	}
	
	
	//Auto login 
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepository.findByUsername(username);
		if(user == null) {
			throw new UsernameNotFoundException("Username Not Found");
		}else {
			List<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>();
			for(Role role : user.getRoles()) {
				grantedAuthorities.add(new SimpleGrantedAuthority(role.getName()));
			}
			return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(), grantedAuthorities);
		}
	}

	@Override
	public User findByUsername(String username) {
		return userRepository.findByUsername(username);
	}

	@Override
	public Iterable<User> findByStatus(boolean status) {
		return userRepository.findByStatus(status);
	}

	@Override
	public long CountUserByStatus(boolean status) {
		return userRepository.countUserByStatus(status);
	}

	@Override
	public long CountAllUser() {
		// TODO Auto-generated method stub
		return userRepository.count();
	}

	
	
}
