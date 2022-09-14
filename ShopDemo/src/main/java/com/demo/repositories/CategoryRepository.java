package com.demo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.demo.entities.Category;
import com.demo.entities.Product;


public interface CategoryRepository extends CrudRepository<Category, Integer>{
	
	@Query("from Category where name = :name")
	public Category findByName(@Param("name") String name);
	
	@Query("Select f from Category as f order by f.categoryId desc")
	public List<Category> findAllByIdDesc();
	
	@Query("Select f from Category as f order by f.categoryId asc")
	public List<Category> findAllByIdAsc();
	
	@Query(value ="from Category where status =:status ")
	public List<Category> findAllByStatus(@Param("status") boolean status);
}
