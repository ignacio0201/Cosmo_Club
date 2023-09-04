package com.cosmoclub.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosmoclub.models.Tag;
import com.cosmoclub.repositories.TagRepository;

@Service
public class TagService {

	@Autowired
	private TagRepository tagRepo;
	
	public Tag crearTag(Tag tag) {
		return tagRepo.save(tag);
	}
	
	public Tag findTagById(Long id) {
	    return tagRepo.findById(id).orElse(null);
	}
	
	public List<Tag> findAll() {
		return tagRepo.findAll();
	}

	public List<Tag> findByIds(List<Long> ids) {
	    return tagRepo.findAllByIdIn(ids);
	}
}
