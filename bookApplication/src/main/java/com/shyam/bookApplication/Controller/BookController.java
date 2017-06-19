package com.shyam.bookApplication.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shyam.bookApplication.model.Book;
import com.shyam.bookApplication.repository.BookRepository;

@Controller
@RequestMapping("/books")
public class BookController {

	@Autowired
	BookRepository bookRepo;

	@GetMapping
	public String book_list(ModelMap modelMap) {
		List<Book> book = bookRepo.findAll();
		System.out.println(book);
		modelMap.addAttribute("books",book);
		return "booklist";
	}
}
