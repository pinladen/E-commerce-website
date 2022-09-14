package com.demo.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.entities.Role;

@Repository
public interface RoleRepository extends CrudRepository<Role, Integer>{
	
	
	// Count user 
		@Query("SELECT COUNT(u) FROM Role u WHERE u.name=:name")
		public long countUserByStatus(@Param("name") String name);
}
