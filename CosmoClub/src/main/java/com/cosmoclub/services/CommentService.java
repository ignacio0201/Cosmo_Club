package com.cosmoclub.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosmoclub.models.Comment;
import com.cosmoclub.repositories.CommentRepository;

@Service
public class CommentService {
		
	@Autowired
	private CommentRepository commentRepo;
	
	public Comment createComment(Comment comment) {
		return commentRepo.save(comment);
	}
	
	public Comment findcommentById(Long id) {
		Optional<Comment> comment = commentRepo.findById(id);
		if (comment.isPresent()) {
			return comment.get();
		} else {
			return null;
		}
	}
}
