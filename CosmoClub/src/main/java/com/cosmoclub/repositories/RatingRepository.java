package com.cosmoclub.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.cosmoclub.models.Post;
import com.cosmoclub.models.Rating;
import com.cosmoclub.models.User;

public interface RatingRepository extends CrudRepository<Rating,Long>{

	List<Rating> findByPost(Post post);
	
	List<Rating> findByUser(User user);
	
	Rating findByUserAndPost(User user, Post post);
	
	@Query("SELECT r FROM Rating r WHERE r.user = :user")
	List<Rating> findRatingsByUser(@Param("user") User user);
	
	
}
