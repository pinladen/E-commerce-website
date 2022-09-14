package com.demo.services;

import com.demo.entities.OrderDetail;

public interface OrderDetailService {
	
	public Iterable<OrderDetail> findAll();

	public OrderDetail findById(int id);

	public OrderDetail save(OrderDetail orderDetail);

	public void delete(int id);
}
