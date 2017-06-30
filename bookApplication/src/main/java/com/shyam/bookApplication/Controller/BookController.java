package com.shyam.bookApplication.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shyam.bookApplication.Service.BookService;
import com.shyam.bookApplication.model.Book;
import com.shyam.bookApplication.repository.BookRepository;

@Controller
@RequestMapping("/books")
public class BookController {

	@Autowired
	BookRepository bookRepo;

	private static final Logger LOGGER = Logger.getLogger(BookController.class);

	@Autowired
	private BookService bookService;

/*	@GetMapping
	public String book_list(ModelMap modelMap) {
		List<Book> book = bookRepo.findAll();
		System.out.println(book);
		modelMap.addAttribute("books", book);
		return "booklist";
	}*/
	
	@GetMapping
	public String list(@RequestParam(value = "price",required=false) String priceFilter, @RequestParam(value = "releaseDate",required=false) String releasedDateFilter, HttpSession session) {
		LOGGER.info("Entering list");
		
		List<Book> books = null ; 

		if (priceFilter != null) {
			if (priceFilter.equals("desc")) {
				books = bookService.findByPriceDesc();
			} else if (priceFilter.equals("asc")) {
				books = bookService.findByPriceAsc();
			}
		}
		else if (releasedDateFilter != null ) {
			if ( releasedDateFilter.equals("desc")){
				books = bookService.findByReleaseDateDesc();
			}
		}
		else {
			books = bookService.findAll();
		}
		System.out.println(books);
		session.setAttribute("books", books);
		return "booklist";
	}

	@GetMapping("/view/{id}")
	public String book_view(@PathVariable("id") Long id, ModelMap modelMap, HttpSession session) {
		Book book = bookRepo.findOne(id);
	
		System.out.println(book);

		if (book != null) {
			modelMap.addAttribute("books", book);
			session.setAttribute("BOOK",book);
			return "bookorder";

		} else {
			return "booklist";
		}

	}
}
