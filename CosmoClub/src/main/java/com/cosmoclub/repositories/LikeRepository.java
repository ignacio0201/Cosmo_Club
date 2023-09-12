package com.cosmoclub.repositories;

import org.springframework.data.repository.CrudRepository;

import com.cosmoclub.models.Comment;
import com.cosmoclub.models.Like;
import com.cosmoclub.models.Like.LikeType;
import com.cosmoclub.models.User;

public interface LikeRepository extends CrudRepository<Like,Long>{
	
	 Long countByCommentAndTipo(Comment comment, LikeType tipo);
	 
	 Like findByUserAndComment(User user, Comment comment);

}
