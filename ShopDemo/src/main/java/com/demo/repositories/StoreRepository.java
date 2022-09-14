package com.demo.repositories;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.entities.Store;


@Repository
public interface StoreRepository extends CrudRepository<Store, Integer>{
	
	@Query("from Store where name = :name")
	public Store findByName(@Param("name") String name);
}
