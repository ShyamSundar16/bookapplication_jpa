package com.shyam.bookpplication.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shyam.bookpplication.model.User;
import com.shyam.bookpplication.repository.BookRepository;
import com.shyam.bookpplication.repository.UserRepository;
import com.shyam.bookpplication.service.UserService;
import com.shyam.bookpplication.util.RegistrationForm;

@Controller
@RequestMapping("/users")
public class UserController {

	@Autowired
	private UserRepository userRepo;

	@Autowired
	private BookRepository bookRepo;

	@Autowired
	private UserService userService;
	
	@GetMapping("/register")
	public String login() {
		return "register";
	}

	@PostMapping("/save")
	public String save(@ModelAttribute @Valid RegistrationForm data, BindingResult result,ModelMap modelMap, 
			HttpSession session) throws Exception {
		try {
			if (result.hasErrors()) {
				modelMap.addAttribute("errors", result.getAllErrors());
				modelMap.addAttribute("Data", data );
				return "register";
			}else {
				userService.save(data);
				
				return "redirect:../";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.addAttribute("Data", data);
			modelMap.addAttribute("ERROR_MESSAGE", e.getMessage());
			return "register";
		}
		}

	@GetMapping("/login")
	public String login_user() {
		return "login";
	}

	@PostMapping("/validate")
	public String authorize(@RequestParam("email") String email, @RequestParam("password") String password,HttpSession session) {
		User u = userRepo.findByEmailIDAndPassword(email, password);
		if (u != null) {
			session.setAttribute("USER",u);
			return "redirect:../books/";

		} else {
			return "login";
		}

	}

}
