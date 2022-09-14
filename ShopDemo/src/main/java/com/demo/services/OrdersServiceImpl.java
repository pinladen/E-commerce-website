package com.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.entities.Orders;
import com.demo.repositories.OrdersRepository;

@Service
public class OrdersServiceImpl implements OrdersService {

	@Autowired
	private OrdersRepository ordersRepository;

	@Override
	public Iterable<Orders> findAll() {
		// TODO Auto-generated method stub
		return ordersRepository.findAll();
	}

	@Override
	public Orders findById(int id) {
		// TODO Auto-generated method stub
		return ordersRepository.findById(id).get();
	}

	@Override
	public Orders save(Orders order) {
		// TODO Auto-generated method stub
		return ordersRepository.save(order);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		ordersRepository.deleteById(id);
	}


	@Override
	public Iterable<Orders> findAllOrderByIdDesc() {
		// TODO Auto-generated method stub
		return ordersRepository.findAllByIdDesc();
	}

	@Override
	public Iterable<Orders> findAllStatus(int status_id) {
		// TODO Auto-generated method stub
		return ordersRepository.findAllByStatus(status_id);
	}

	@Override
	public Iterable<Orders> findByUserId(int id) {
		// TODO Auto-generated method stub
		return ordersRepository.findAllByUserIdDesc(id);
	}

	@Override
	public Iterable<Orders> findByUserIdAndStatusId(int id, int statusid) {
		// TODO Auto-generated method stub
		return ordersRepository.findAllByUserIdAndStatusIdDesc(id, statusid);
	}

	@Override
	public Iterable<Orders> findStoreIdAndStatusId(int storeId, int statusId) {
		// TODO Auto-generated method stub
		return ordersRepository.findAllByStoreIdAndStatusId(storeId, statusId);
	}

	@Override
	public Iterable<Orders> findAllByStoreId(int storeId) {
		// TODO Auto-generated method stub
		return ordersRepository.findAllByStoreId(storeId);
	}

	

	@Override
	public Iterable<Orders> findByUserIdAndOrderId(int id, int orderId) {
		// TODO Auto-generated method stub
		return ordersRepository.findAllByStoreIdAndOrderId(id, orderId);
	}

	@Override
	public Iterable<Orders> findAllByOrderId(int orderId) {
		// TODO Auto-generated method stub
		return ordersRepository.findAllByOrderId(orderId);
	}
	
}
