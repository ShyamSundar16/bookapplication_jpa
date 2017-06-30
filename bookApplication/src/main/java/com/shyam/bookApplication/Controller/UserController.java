package com.shyam.bookApplication.Controller;

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

import com.shyam.bookApplication.Service.UserService;
import com.shyam.bookApplication.model.User;
import com.shyam.bookApplication.repository.BookRepository;
import com.shyam.bookApplication.repository.UserRepository;
import com.shyam.bookApplication.util.RegistrationForm;

@Controller
@RequestMapping("/users")
public class UserController {

	@Autowired
	UserRepository userRepo;

	@Autowired
	BookRepository bookRepo;

	@Autowired
	UserService userService;
	
	@GetMapping("/register")
	public String login() {
		return "register";
	}

	@PostMapping("/save")
	public String add_user(@ModelAttribute @Valid RegistrationForm user, BindingResult result, ModelMap modelMap, HttpSession session) throws Exception {
		try{
			System.out.println("Register"+user);
			if(result.hasErrors()){
				modelMap.addAttribute("ERROR_REG", result.getAllErrors());
			}
			else{
				userService.save(user);
			}
			return "login";
		}catch (Exception e) {
			e.printStackTrace();
			modelMap.addAttribute("Data", user);
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
