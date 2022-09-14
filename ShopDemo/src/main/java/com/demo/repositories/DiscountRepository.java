package com.demo.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import com.demo.entities.Discount;

@Repository
public interface DiscountRepository extends CrudRepository<Discount, Integer> {
	
	@Query("from Discount where name = :name")
	public Discount findByName(@Param("name") String name);
}	
