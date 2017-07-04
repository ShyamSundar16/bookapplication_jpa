package com.shyam.bookpplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shyam.bookpplication.model.OrderItem;

public interface OrderItemRepository extends JpaRepository<OrderItem, Integer> {

}
