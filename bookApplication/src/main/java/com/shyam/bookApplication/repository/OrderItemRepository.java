package com.shyam.bookApplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shyam.bookApplication.model.OrderItem;

public interface OrderItemRepository extends JpaRepository<OrderItem, Integer> {

}
