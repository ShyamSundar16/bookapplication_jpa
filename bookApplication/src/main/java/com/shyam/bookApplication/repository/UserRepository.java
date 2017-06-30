package com.shyam.bookApplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shyam.bookApplication.model.User;
import com.shyam.bookApplication.util.RegistrationForm;

public interface UserRepository extends JpaRepository<User, Integer> {

	public User findByEmailIDAndPassword(String email, String password);

}
