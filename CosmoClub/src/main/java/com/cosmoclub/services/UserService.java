package com.cosmoclub.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosmoclub.models.User;
import com.cosmoclub.repositories.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepo;
	
	public User registerUser(User user) {
		String hashed = BCrypt.hashpw(user.getPassword(),BCrypt.gensalt());
		user.setPassword(hashed);
		return userRepo.save(user);
	}
	
	public User	findUserByEmail(String email) {
		return userRepo.findByEmail(email);
	}
	
	public User findUserById(Long id) {
	    Optional<User> user = userRepo.findById(id);
	    return user.orElse(null);
	}
	public boolean authenticateUser(String email, String password) {
	    User user = userRepo.findByEmail(email);
	    if (user == null) {
	        return false;
	    }
	    return BCrypt.checkpw(password, user.getPassword());
	}
	
	public List<User> getAllConnectedUsers(Long id) {
		ArrayList<User> listUsers = new ArrayList<User>();
		Optional<User> user = userRepo.findById(id);
	    listUsers.add(user.get());
		return listUsers;
	}
	
	public List<User> getAllConnectedUsers() {
        return userRepo.findByStatus("active");
    }

	public void save(User user) {
		userRepo.save(user);
	}
	
	public List <User> findUsersLike(String q){
		return userRepo.findByNameLike(q);
}

}