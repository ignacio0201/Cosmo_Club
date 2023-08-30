package com.cosmoclub.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosmoclub.models.Post;
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
}
