package com.demo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.entities.Product;

@Repository
public interface ProductRepository extends CrudRepository<Product, Integer>{
	
	// Find Category and Store ID 
	@Query(value ="from Product where category.categoryId = :categoryId and store.userId =:userId and status =:status order by productId desc")
	public List<Product> findBycategoryIdAndStoreId(@Param("categoryId") int categoryId,@Param("userId") int userId,@Param("status") boolean status);
	
	
	// Find By StoreId , ( status : all)
	@Query(value ="from Product where store.userId =:userId order by productId desc")
	public List<Product> findByStoreId(@Param("userId") int userId);
	
	
	
	//  find all
	//	Find all by InOrder
	@Query(value ="from Product where status=:status order by unitOnOrder desc")
	public List<Product> findAllByInOrder(@Param("status") boolean status);
	
	// find all by categoryId desc
	@Query(value ="from Product where category.categoryId =:categoryId  order by productId desc")
	public List<Product> findAllByCategoryId(@Param("categoryId") int categoryId);
	
	// find all by productId desc
	@Query(value ="from Product where productId =:productId order by productId desc")
	public List<Product> findAllByProductId(@Param("productId") int productId);
	
	// find all by status desc
	@Query(value ="from Product where status =:status order by productId desc")
	public List<Product> findAllByStatusId(@Param("status") boolean status);
	
	// Find All By Price Desc (status : true )
	@Query(value ="from Product where status=:status order by price desc")
	public List<Product> findAllByPriceDest(@Param("status") boolean status);
	
	@Query(value ="from Product where status=:status order by price asc")
	public List<Product> findAllByPriceAsc(@Param("status") boolean status);
	
	
	// Find By Category
	// Find by CategoryId , order by InOrder desc , (status : true )
	@Query(value ="from Product where category.categoryId = :categoryId and status = :status order by unitOnOrder desc")
	public List<Product> findBycategoryId(@Param("categoryId") int categoryId, @Param("status") boolean status);
	
	@Query(value ="from Product where category.categoryId = :categoryId and status = :status order by price desc")
	public List<Product> findByCategoryIdOrderPriceDesc(@Param("categoryId") int categoryId, @Param("status") boolean status);
	
	@Query(value ="from Product where category.categoryId = :categoryId and status = :status order by price asc")
	public List<Product> findByCategoryIdOrderPriceAsc(@Param("categoryId") int categoryId, @Param("status") boolean status);
	
	//-------------------------------------------------------------------------------
	//Find By keyword 
	// Find by keyword , order by InOrder desc , (status : true )
	@Query("SELECT p from Product p where p.name like %:keyword% and p.status = :status order by p.unitOnOrder desc")
	public List<Product> findByKeyword(@Param("keyword") String keyword,@Param("status") boolean status);

	// Find by keyword , order by Price Desc , (status : true )
	@Query("SELECT p from Product p where p.name like %:keyword% and p.status = :status order by p.price desc ")
	public List<Product> findByKeywordOrderByPriceDesc(@Param("keyword") String keyword, @Param("status") boolean status);
	// Find by keyword , order by Price Asc , (status : true )
	@Query("SELECT p from Product p where p.name like %:keyword% and p.status = :status order by p.price asc")
	public List<Product> findByKeywordOrderByPriceAsc(@Param("keyword") String keyword, @Param("status") boolean status);
	
	
	//-------------------------------------------------------------------------------
	//Find By keyword 
	//search name and categoryId
	@Query("SELECT p from Product p where p.category.categoryId = :categoryId and p.name like %:keyword% and p.status = :status order by p.unitOnOrder desc")
	public List<Product> findByCategoryIdAndKeyword(@Param("keyword") String keyword,@Param("categoryId") int categoryId , @Param("status") boolean status);
	
	//search name " and categoryId , orderByRating Highest
	@Query("SELECT p from Product p where p.category.categoryId = :categoryId and p.name like %:keyword% and p.status = :status order by p.price desc")
	public List<Product> findByCategoryIdAndKeywordOrderByPriceDesc(@Param("keyword") String keyword,@Param("categoryId") int categoryId , @Param("status") boolean status);
	
	//search name  and categoryId , orderByRating Lowest
	@Query("SELECT p from Product p where p.category.categoryId = :categoryId and p.name like %:keyword% and p.status = :status order by p.price asc")
	public List<Product> findByCategoryIdAndKeywordOrderByPriceAsc(@Param("keyword") String keyword,@Param("categoryId") int categoryId , @Param("status") boolean status);
	

	
	// list product , oder by productId , not status
	@Query(value = "SELECT p from Product p order by p.productId desc")
    public List<Product> findProductByDesc();
	
	// find by storeId
	@Query("SELECT p from Product p where p.store.userId = :userId and p.status = :status order by p.unitOnOrder desc")
	public List<Product> findByStoreIdOrderByUnitOnOrderDesc(@Param("userId") int userId,@Param("status") boolean status);
	
	@Query("SELECT p from Product p where p.store.userId = :userId and p.category.categoryId =:categoryId and p.status = :status order by p.unitOnOrder desc")
	public List<Product> findByStoreIdAndCategoryIdOrderByUnitOnOrderDesc(@Param("userId") int userId,@Param("categoryId") int categoryId,@Param("status") boolean status);
	
}
