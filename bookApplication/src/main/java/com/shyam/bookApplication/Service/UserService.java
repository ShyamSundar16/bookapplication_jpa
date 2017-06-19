package com.shyam.bookApplication.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shyam.bookApplication.model.User;
import com.shyam.bookApplication.repository.UserRepository;


@Service
public class UserService {
	@Autowired
UserRepository userrepository;
	
	public void save(User user){
		userrepository.save(user);
	}
	
	public User findbyemailIdAndpassword(String email,String password){
		return userrepository.findByEmailIDAndPassword("test@gmail.com", "test");
	}
}
