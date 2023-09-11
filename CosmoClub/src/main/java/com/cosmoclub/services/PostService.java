package com.cosmoclub.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosmoclub.models.Post;
import com.cosmoclub.models.Rating;
import com.cosmoclub.repositories.PostRepository;

@Service
public class PostService {
	@Autowired
	private PostRepository postRepo;
	
	public Post createPost(Post post) {
		return postRepo.save(post);
	}
	
	public Post findPost(Long id) {
		Optional<Post> post = postRepo.findById(id);
		if (post.isPresent()) {
			return post.get();
		} else {
			return null;
		}
	}
	
	public List<Post> findAllPosts(){
		return postRepo.findAll();
	}

	public void savePost(Post post) {
		postRepo.save(post);
		
	}
	
	 public Double calculateAverageRating(Long postId) {
	        Post post = findPost(postId);

	        if (post != null && post.getRating_user() != null && !post.getRating_user().isEmpty()) {
	            List<Rating> ratings = post.getRatings();
	            double totalRating = 0;

	            for (Rating rating : ratings) {
	                totalRating += rating.getRating();
	            }

	            return totalRating / ratings.size();
	        } else {
	            return 0.0; 
	        }
	    }
}
