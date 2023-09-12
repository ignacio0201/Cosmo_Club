package com.cosmoclub.repositories;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.cosmoclub.models.Comment;
import com.cosmoclub.models.Like;
import com.cosmoclub.models.Like.LikeType;
import com.cosmoclub.models.User;

public interface LikeRepository extends CrudRepository<Like,Long>{
	
	 Long countByCommentAndTipo(Comment comment, LikeType tipo);
	 
	 Like findByUserAndComment(User user, Comment comment);
	 
	 @Modifying
	    @Query("DELETE FROM Like l WHERE l.user = :user AND l.comment = :comment")
	    void deleteByUserAndComment(@Param("user") User user, @Param("comment") Comment comment);

}
