package com.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.entities.OrderDetail;
import com.demo.repositories.OrderDetailRepository;

@Service
public class OrderDetailServiceImpl implements OrderDetailService{
	
	@Autowired
	private OrderDetailRepository orderDetailRepository;

	@Override
	public Iterable<OrderDetail> findAll() {
		// TODO Auto-generated method stub
		return orderDetailRepository.findAll();
	}

	@Override
	public OrderDetail findById(int id) {
		// TODO Auto-generated method stub
		return orderDetailRepository.findById(id).get();
	}

	@Override
	public OrderDetail save(OrderDetail orderDetail) {
		// TODO Auto-generated method stub
		return orderDetailRepository.save(orderDetail);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		orderDetailRepository.deleteById(id);
	}
	
}
