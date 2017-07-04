package com.shyam.bookpplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shyam.bookpplication.model.User;
import com.shyam.bookpplication.util.RegistrationForm;

public interface UserRepository extends JpaRepository<User, Integer> {

	
	
	public User findByEmailIDAndPassword(String email, String password);

}
