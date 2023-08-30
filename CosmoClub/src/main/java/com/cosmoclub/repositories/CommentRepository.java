package com.cosmoclub.repositories;

import org.springframework.data.repository.CrudRepository;

import com.cosmoclub.models.Comment;

public interface CommentRepository extends CrudRepository<Comment,Long>{

}
