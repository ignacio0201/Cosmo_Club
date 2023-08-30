package com.cosmoclub.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosmoclub.models.Notification;
import com.cosmoclub.repositories.NotificationRepository;

@Service
public class NotificationService {
	
	@Autowired
	private NotificationRepository notifyRepo;
	
	public Notification createNotify(Notification notification) {
		return notifyRepo.save(notification);
	}
	
	public Notification findNotify(Long id) {
		Optional<Notification> notify = notifyRepo.findById(id);
		if (notify.isPresent()) {
			return notify.get();
		} else {
			return null;
		}
	}
}
