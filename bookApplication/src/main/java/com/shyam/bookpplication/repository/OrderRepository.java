package com.shyam.bookpplication.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shyam.bookpplication.model.Order;

public interface OrderRepository extends JpaRepository<Order, Long> {
	public Order findById(int id);
	
	public List<Order> findByUserIdOrderByIdDesc(Long userId);
}
