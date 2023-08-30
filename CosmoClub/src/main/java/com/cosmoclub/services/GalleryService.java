package com.cosmoclub.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosmoclub.models.Gallery;
import com.cosmoclub.repositories.GalleryRepository;

@Service
public class GalleryService {

	@Autowired
	private GalleryRepository galleryRepo;
	
	public Gallery createGallery(Gallery gallery) {
		return galleryRepo.save(gallery);
	}
	
	public Gallery findgalleryById(Long id) {
		Optional<Gallery> gallery = galleryRepo.findById(id);
		if (gallery.isPresent()) {
			return gallery.get();
		} else {
			return null;
		}
	}
}
