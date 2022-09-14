package com.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.entities.Product;
import com.demo.repositories.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductRepository productRepository;

	@Override
	public Iterable<Product> findAll() {
		return productRepository.findAll();
	}

	@Override
	public Product findById(int id) {
		return productRepository.findById(id).get();
	}

	@Override
	public Product save(Product product) {
		return productRepository.save(product);
	}

	@Override
	public void delete(int id) {
		productRepository.deleteById(id);
	}


	@Override
	public Iterable<Product> findByStore(int storeId) {
		return productRepository.findByStoreId(storeId);
	}

	
	//--------------------------Find All-------------------------------------
	// Find All By InOrder Desc (status : true )
	@Override
	public Iterable<Product> findAllByInOrder() {
		return productRepository.findAllByInOrder(true);
	}
	
	// Find All By Categoryid Desc 
	@Override
	public Iterable<Product> findAllCategoryId(int categoryId) {
		return productRepository.findAllByCategoryId(categoryId);
	}
	
	// Find All By ProductId Desc 
	@Override
	public Iterable<Product> findAllByProductId(int productId) {
		return productRepository.findAllByProductId(productId);
	}
	
	// Find All By status Desc 
	@Override
	public Iterable<Product> findAllByStatus(boolean status) {
		return productRepository.findAllByStatusId(status);
	}
	
	// Find All By Price Desc (status : true )
	@Override
	public Iterable<Product> findAllByPriceDest() {
		return productRepository.findAllByPriceDest(true);
	}
	// Find All By Price Asc (status : true )
	@Override
	public Iterable<Product> findAllByPriceAsc() {
		return productRepository.findAllByPriceAsc(true);
	}
	
	//--------------------------Find by [Category Id]-------------------------------------
	// Find by CategoryId , order by InOrder desc , (status : true )
	@Override
	public Iterable<Product> findByCategoryId(int categoryId) {
		return productRepository.findBycategoryId(categoryId,true);
	}
	// Find by CategoryId , order by Price Desc , (status : true )
	@Override
	public Iterable<Product> findByCategoryIdOrderPriceDesc(int categoryId) {
		return productRepository.findByCategoryIdOrderPriceDesc(categoryId, true);
	}
	// Find by CategoryId , order by Price Asc , (status : true )
	@Override
	public Iterable<Product> findByCategoryIdOrderPriceAsc(int categoryId) {
		return productRepository.findByCategoryIdOrderPriceAsc(categoryId, true);
	}
	
	
	//--------------------------Find by [Keyword]-------------------------------------
	// Find by keyword , order by InOrder desc , (status : true )
	@Override
	public Iterable<Product> findByKeyword(String keyword) {
		return productRepository.findByKeyword(keyword,true);
	}
	// Find by keyword , order by Price Desc , (status : true )
	@Override
	public Iterable<Product> findByKeywordOrderPriceDesc(String keyword) {
		return productRepository.findByKeywordOrderByPriceDesc(keyword, true);
	}
	// Find by keyword , order by Price Asc , (status : true )
	@Override
	public Iterable<Product> findByKeywordOrderPriceAsc(String keyword) {
		return productRepository.findByKeywordOrderByPriceAsc(keyword, true);
	}
	
	
	//-----------------------Find by [CategoryId] and [keyword]---------------------------------
	// Find by CategoryId and keyword, order by InOrder desc , (status : true )
	@Override
	public Iterable<Product> findByCategoryIdAndKeyword(int categoryId, String keyword) {
		return productRepository.findByCategoryIdAndKeyword(keyword, categoryId, true);
	}
	// Find by CategoryId and keyword, order by Price Desc , (status : true )
	@Override
	public Iterable<Product> findByCategoryIdAndKeywordOrderPriceDesc(int categoryId, String keyword) {
		return productRepository.findByCategoryIdAndKeywordOrderByPriceDesc(keyword, categoryId, true);
	}
	// Find by CategoryId and keyword, order by Price Asc , (status : true )
	@Override
	public Iterable<Product> findByCategoryIdAndKeywordOrderPriceAsc(int categoryId, String keyword) {
		return productRepository.findByCategoryIdAndKeywordOrderByPriceAsc(keyword, categoryId, true);
	}
	
	//---------find by StoreId---------------------
	@Override
	public Iterable<Product> findAllByStoreId(int storeId) {
		return productRepository.findByStoreIdOrderByUnitOnOrderDesc(storeId, true);
	}

	@Override
	public Iterable<Product> findAllByStoreIdAndCategoryId(int storeId, int categoryId) {
		return productRepository.findByStoreIdAndCategoryIdOrderByUnitOnOrderDesc(storeId, categoryId, true);
	}

	

	
}
