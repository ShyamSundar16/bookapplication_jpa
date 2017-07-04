package com.shyam.bookpplication.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shyam.bookpplication.model.Book;

public interface BookRepository extends JpaRepository<Book, Long> {

List<Book> findByOrderByPriceDesc();
	
	List<Book> findByOrderByPriceAsc();


	List<Book> findByOrderByReleaseDateDesc();
	
}
