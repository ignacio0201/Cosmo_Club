package com.cosmoclub.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.cosmoclub.models.User;

public interface UserRepository extends CrudRepository<User,Long>{
	
	User findByEmail(String email);

	boolean existsByEmail(String email);
	
	List<User> findByStatus (String status);
}
