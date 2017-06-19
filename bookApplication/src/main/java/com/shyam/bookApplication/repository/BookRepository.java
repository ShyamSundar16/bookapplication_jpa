package com.shyam.bookApplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shyam.bookApplication.model.Book;

public interface BookRepository extends JpaRepository<Book, Integer> {
public Book findById(int id);
	
}
