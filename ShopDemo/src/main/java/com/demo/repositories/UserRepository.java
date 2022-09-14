package com.demo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.entities.User;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
	
	// Single User
	@Query("from User where username = :username")
	public User findByUsername(@Param("username") String username);
	
	// List Users
	@Query("from User where status = :status")
	public List<User> findByStatus(@Param("status") boolean status);
	
	// Count user 
	@Query("SELECT COUNT(u) FROM User u WHERE u.status=:status")
	public long countUserByStatus(@Param("status") boolean status);
	
}
