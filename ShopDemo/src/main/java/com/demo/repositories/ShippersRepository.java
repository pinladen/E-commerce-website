package com.demo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.demo.entities.Shippers;

public interface ShippersRepository extends CrudRepository<Shippers, Integer>{
	
	@Query("from Shippers where name = :name")
	public Shippers findByName(@Param("name") String name);
	
	@Query("Select f from Shippers as f order by f.shipperId desc")
	public List<Shippers> findAllByIdDesc();
	
	@Query("Select f from Shippers as f order by f.shipperId asc")
	public List<Shippers> findAllByIdAsc();
}
