package com.cosmoclub.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cosmoclub.models.ChatRoom;

public interface ChatRoomRepository extends JpaRepository<ChatRoom, Long> {
	
    @Query("SELECT cr FROM ChatRoom cr WHERE (cr.user1.id = :userId1 AND cr.user2.id = :userId2) OR (cr.user1.id = :userId2 AND cr.user2.id = :userId1)")
    ChatRoom findChatRoomWithParticipants(Long userId1, Long userId2);
    
    Optional<ChatRoom> findById(Long Id);
    
    List<ChatRoom> findByUser1_IdOrUser2_Id(Long user1Id, Long user2Id);
}
