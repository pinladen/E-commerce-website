package com.demo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import com.demo.entities.Orders;


@Repository
public interface OrdersRepository extends CrudRepository<Orders, Integer>{
	@Query("Select f from Orders as f order by f.orderId desc")
	public List<Orders> findAllByIdDesc();
	
	@Query(value ="from Orders where user.userId =:userId order by orderId desc")
	public List<Orders> findAllByUserIdDesc(@Param("userId") int userId);
	
	
	
	@Query(value ="from Orders where status.statusId =:statusId order by orderId desc")
	public List<Orders> findAllByStatus(@Param("statusId") int statusId);
	
	@Query(value ="from Orders where store.userId =:userId and status.statusId =:statusId order by orderId desc")
	public List<Orders> findAllByStoreIdAndStatusId(@Param("userId") int userId,@Param("statusId") int statusId);
	
	@Query(value ="from Orders where store.userId =:userId and orderId =:orderId order by orderId desc")
	public List<Orders> findAllByStoreIdAndOrderId(@Param("userId") int userId,@Param("orderId") int orderId);
	
	//find by StoreId
	@Query(value ="from Orders where store.userId =:userId  order by orderId desc")
	public List<Orders> findAllByStoreId(@Param("userId") int userId);
	
	@Query(value ="from Orders where orderId =:orderId  order by orderId desc")
	public List<Orders> findAllByOrderId(@Param("orderId") int orderId);
	
	@Query(value ="from Orders where user.userId =:userId and status.statusId =:statusId order by orderId desc")
	public List<Orders> findAllByUserIdAndStatusIdDesc(@Param("userId") int userId, @Param("statusId") int statusId);
}
