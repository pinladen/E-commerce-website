package com.demo.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.demo.entities.OrderDetail;

@Repository
public interface OrderDetailRepository extends CrudRepository<OrderDetail, Integer>{

}
