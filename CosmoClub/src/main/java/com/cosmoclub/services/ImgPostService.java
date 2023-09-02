package com.cosmoclub.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosmoclub.models.ImgPost;
import com.cosmoclub.repositories.ImgPostRepository;

@Service
public class ImgPostService {

	@Autowired
	private ImgPostRepository imgPostRepo;
	
	public ImgPost createImgPost(ImgPost imgpost) {
		return imgPostRepo.save(imgpost);
	}
	
	public ImgPost findImgPostById(Long id) {
		Optional<ImgPost> imgpost = imgPostRepo.findById(id);
		if (imgpost.isPresent()) {
			return imgpost.get();
		} else {
			return null;
		}
	}
	

}
