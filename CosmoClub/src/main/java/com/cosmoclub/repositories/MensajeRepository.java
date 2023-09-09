package com.cosmoclub.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cosmoclub.models.ChatRoom;
import com.cosmoclub.models.Mensaje;

public interface MensajeRepository extends JpaRepository<Mensaje, Long> {

    @Query("SELECT m FROM Mensaje m WHERE m.chatRoom = :chatRoom ORDER BY m.createdAt")
    List<Mensaje> findByChatRoomOrderByCreatedAt(ChatRoom chatRoom);
    
    Mensaje findTopByChatRoomOrderByCreatedAtDesc(ChatRoom chatRoom);
   

}
