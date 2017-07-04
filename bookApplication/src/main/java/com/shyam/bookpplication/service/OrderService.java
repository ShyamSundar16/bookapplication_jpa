package com.shyam.bookpplication.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shyam.bookpplication.model.Order;
import com.shyam.bookpplication.repository.OrderItemRepository;
import com.shyam.bookpplication.repository.OrderRepository;


@Service
public class OrderService {

	@Autowired
	private OrderItemRepository orderitemRepo;
	@Autowired
	private OrderRepository orderRepo;


	public void save(Order order) {
		orderRepo.save(order);
		
	}


	public List<Order> findByUserIdOrderByIdDesc(Long userId){
	System.out.println("service");
		return orderRepo.findByUserIdOrderByIdDesc(userId);
	}


	public Order findOne(Long id){
		return orderRepo.findOne(id);
	}
}
