package com.cosmoclub.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosmoclub.models.Progress;
import com.cosmoclub.repositories.ProgressRepository;

@Service
public class ProgressService {

	@Autowired
	private ProgressRepository progressRepo;
	
	public Progress crearProgress(Progress progress) {
		progress.setProgress(0);
		
		return progressRepo.save(progress);
	}
	
	public Progress findProgressById(Long id) {
		Optional<Progress> progress = progressRepo.findById(id);
		if(progress.isPresent()) {
			return progress.get();
		}else {
			return null;
		}
	}
}
