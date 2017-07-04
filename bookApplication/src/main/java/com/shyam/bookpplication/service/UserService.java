package com.shyam.bookpplication.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.shyam.bookpplication.model.User;
import com.shyam.bookpplication.repository.UserRepository;
import com.shyam.bookpplication.util.EmailUtil;
import com.shyam.bookpplication.util.RegistrationForm;

@Service
public class UserService {
	@Autowired
	UserRepository userrepository;

	@Autowired
	EmailUtil emailUtil;


	public String save(RegistrationForm Data) throws Exception  {
		User user=new User();

		user.setName(Data.getName());
		user.setEmailID(Data.getEmail());
		user.setPassword(Data.getPassword());

		userrepository.save(user);
		String subject = "Your account has been created";
		String body = "Welcome to BookApplication ! You can login to your account !";
		String email=Data.getEmail();
		emailUtil.send(email, subject, body);
		return "login";
		
	

	}

	public User findbyemailIdAndpassword(String email, String password) {
		return userrepository.findByEmailIDAndPassword("test@gmail.com", "test");
	}
}
