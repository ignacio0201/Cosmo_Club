package com.cosmoclub.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosmoclub.models.Comment;
import com.cosmoclub.models.Like;
import com.cosmoclub.models.Like.LikeType;
import com.cosmoclub.models.User;
import com.cosmoclub.repositories.LikeRepository;

@Service
public class LikeService {
	
	@Autowired
	private LikeRepository likeRepo;
	
	public Like crearLike(Like like) {
		
		return likeRepo.save(like);
	}

	public void saveLike(Like like) {
		likeRepo.save(like);
		
	}

	 public Long countLikesByCommentAndType(Comment comment, LikeType tipo) {
	        return likeRepo.countByCommentAndTipo(comment, tipo);
	    }

	 public void deleteLike(Like like) {
	        likeRepo.delete(like);
	    }
		
	

	public Like findByUserAndComment(User user, Comment comment) {
        return likeRepo.findByUserAndComment(user, comment);
    }

}
