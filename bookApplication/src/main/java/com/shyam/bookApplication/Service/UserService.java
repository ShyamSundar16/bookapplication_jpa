package com.shyam.bookApplication.Service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.shyam.bookApplication.model.User;
import com.shyam.bookApplication.repository.UserRepository;
import com.shyam.bookApplication.util.EmailUtil;
import com.shyam.bookApplication.util.RegistrationForm;

@Service
public class UserService {
	@Autowired
	UserRepository userrepository;

	@Autowired
	EmailUtil emailUtil;

	public String save(RegistrationForm Data) throws Exception {
	User user = new User();
	user.setName(Data.getName());
    user.setEmailID(Data.getEmail());
    user.setPassword(Data.getPassword());
		userrepository.save(user);
		String subject = "conformation mail";
		String body = "registered successfully";
		
		emailUtil.send(Data.getEmail(), subject, body);
		return "login";
	}

	public User findbyemailIdAndpassword(String email, String password) {
		return userrepository.findByEmailIDAndPassword("test@gmail.com", "test");
	}
}
