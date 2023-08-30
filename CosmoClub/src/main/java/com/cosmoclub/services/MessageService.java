package com.cosmoclub.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosmoclub.models.Message;
import com.cosmoclub.repositories.MessageRepository;

@Service
public class MessageService {
	
	@Autowired
	private MessageRepository messageRepo;
	
	public Message createPost(Message message) {
		return messageRepo.save(message);
	}
	
	public Message findMessageById(Long id) {
		Optional<Message> message = messageRepo.findById(id);
		if (message.isPresent()) {
			return message.get();
		} else {
			return null;
		}
	}
}
