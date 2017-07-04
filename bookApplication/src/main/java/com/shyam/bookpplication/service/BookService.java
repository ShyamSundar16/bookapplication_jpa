package com.shyam.bookpplication.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shyam.bookpplication.model.Book;
import com.shyam.bookpplication.repository.BookRepository;

@Service
public class BookService {

	@Autowired
	private BookRepository bookRepo;
	

	
	public List<Book> findAll() {
		return bookRepo.findAll();
	}
public Book findOne(Long id){
	return bookRepo.findOne(id);
}

public List<Book> findByPriceDesc() {
	return bookRepo.findByOrderByPriceDesc();
}

public List<Book> findByPriceAsc() {
	return bookRepo.findByOrderByPriceAsc();
}

public List<Book> findByReleaseDateDesc() {
	return bookRepo.findByOrderByReleaseDateDesc();
}

	
}
