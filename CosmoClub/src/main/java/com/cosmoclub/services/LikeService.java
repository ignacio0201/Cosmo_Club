package com.cosmoclub.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosmoclub.models.Like;
import com.cosmoclub.repositories.LikeRepository;

@Service
public class LikeService {
	
	@Autowired
	private LikeRepository likeRepo;
	
	public Like crearLike(Like like) {
		
		return likeRepo.save(like);
	}

}
