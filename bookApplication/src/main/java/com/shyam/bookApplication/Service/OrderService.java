package com.shyam.bookApplication.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shyam.bookApplication.model.Order;
import com.shyam.bookApplication.repository.OrderItemRepository;
import com.shyam.bookApplication.repository.OrderRepository;


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
		System.out.println("Service reached");
		return orderRepo.findByUserIdOrderByIdDesc(userId);
	}

	
}
