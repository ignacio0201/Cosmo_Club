package com.cosmoclub.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosmoclub.models.Post;
import com.cosmoclub.models.Rating;
import com.cosmoclub.models.User;
import com.cosmoclub.repositories.RatingRepository;

@Service
public class RatingService {

	@Autowired
	private RatingRepository ratingRepo;

	public Rating crearRating(Rating rating) {
		return ratingRepo.save(rating);
	}

	public Rating findUserById(Long id) {
		Optional<Rating> rating = ratingRepo.findById(id);
		if(rating.isPresent()) {
			return rating.get();
		}else {
			return null;
		}
	}

	public Double promedio(List<Rating> ratings) {
	    if (ratings.isEmpty()) {
	        return 0.0;
	    }
	
	    Double totalRating = 0.0;
	    for (Rating rating : ratings) {
	        totalRating += rating.getRating();
	    }
	
	    return totalRating / ratings.size();
	}
	
	public List<Rating> ratingsPorPost(Post post) {
		return ratingRepo.findByPost(post);
	}
	
	public Rating ratingByUserAndPost(User user, Post post) {
		
		return ratingRepo.findByUserAndPost(user, post);
		
	}
}
