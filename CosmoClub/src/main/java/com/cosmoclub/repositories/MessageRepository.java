package com.cosmoclub.repositories;

import org.springframework.data.repository.CrudRepository;

import com.cosmoclub.models.Message;

public interface MessageRepository extends CrudRepository<Message,Long>{

}
