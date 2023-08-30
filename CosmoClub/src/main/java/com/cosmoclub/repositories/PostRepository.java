package com.cosmoclub.repositories;

import org.springframework.data.repository.CrudRepository;

import com.cosmoclub.models.Post;

public interface PostRepository extends CrudRepository<Post,Long>{

}
