package com.demo.services;

import com.demo.entities.Product;

public interface ProductService {

	

	public Product findById(int id);

	public Product save(Product product);

	public void delete(int id);
		
	// Find All by storeId (status : all )
	public Iterable<Product> findByStore(int storeId);
	
	
	//--------------------------Find All-------------------------------------
	// Find All (status : all )
	public Iterable<Product> findAll();
	
	// Find All By InOrder Desc (status : true )
	public Iterable<Product> findAllByInOrder();
	
	//Find All By productId Desc
	public Iterable<Product> findAllByProductId(int productId);
	
	// Find All By categoryId Desc 
	public Iterable<Product> findAllCategoryId(int categoryId);
	
	// Find All By categoryId Desc 
		public Iterable<Product> findAllByStatus(boolean status);
	
	// Find All By Price Desc (status : true )
	public Iterable<Product> findAllByPriceDest();
	
	// Find All By Price Asc (status : true )
	public Iterable<Product> findAllByPriceAsc();
	
	//--------------------------Find by [Category Id]-------------------------------------
	// Find by CategoryId , order by InOrder desc , (status : true )
	public Iterable<Product> findByCategoryId(int categoryId);
	
	// Find by CategoryId , order by Price Desc , (status : true )
	public Iterable<Product> findByCategoryIdOrderPriceDesc(int categoryId);
	
	// Find by CategoryId , order by Price Asc , (status : true )
	public Iterable<Product> findByCategoryIdOrderPriceAsc(int categoryId);
	
	
	//--------------------------Find by [Keyword]-------------------------------------
	// Find by keyword , order by InOrder desc , (status : true )
	public Iterable<Product> findByKeyword(String keyword);
	
	// Find by keyword , order by Price Desc , (status : true )
	public Iterable<Product> findByKeywordOrderPriceDesc(String keyword);
	
	// Find by keyword , order by Price Asc , (status : true )
	public Iterable<Product> findByKeywordOrderPriceAsc(String keyword);
	
	
	//-----------------------Find by [CategoryId] and [keyword]---------------------------------
	// Find by CategoryId and keyword, order by InOrder desc , (status : true )
	public Iterable<Product> findByCategoryIdAndKeyword(int categoryId , String keyword);
	// Find by CategoryId and keyword, order by Price Desc , (status : true )
	public Iterable<Product> findByCategoryIdAndKeywordOrderPriceDesc(int categoryId , String keyword);
	// Find by CategoryId and keyword, order by Price Asc , (status : true )
	public Iterable<Product> findByCategoryIdAndKeywordOrderPriceAsc(int categoryId , String keyword);
	
//	public Iterable<Product> findByKeyword(String keyword);
	
	//----------------Find by Store Id-------------------------------------------------
	public Iterable<Product> findAllByStoreId(int storeId);
	
	public Iterable<Product> findAllByStoreIdAndCategoryId(int storeId, int categoryId);
}
