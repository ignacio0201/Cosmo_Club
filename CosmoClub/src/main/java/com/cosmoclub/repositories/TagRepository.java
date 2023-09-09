package com.cosmoclub.repositories; 

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.cosmoclub.models.Tag;


public interface TagRepository extends CrudRepository<Tag,Long>{
	
	List<Tag> findAll();
	List<Tag> findAllByIdIn(List<Long> ids);
}
