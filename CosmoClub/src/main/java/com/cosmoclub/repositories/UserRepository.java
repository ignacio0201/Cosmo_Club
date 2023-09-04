package com.cosmoclub.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.cosmoclub.models.User;

public interface UserRepository extends JpaRepository<User, Long> {
	
	User findByEmail(String email);

	boolean existsByEmail(String email);
	
	List<User> findByStatus (String status);
	
	Optional<User> findById(Long id);
    User findByName(String name);

    @Query("SELECT u FROM User u WHERE u.id <> :userId")
    List<User> findAllExcept(Long userId);
    
    @Query("SELECT u FROM User u " +
            "WHERE u.id IN (" +
            "   SELECT DISTINCT u1.id FROM User u1 " +
            "   JOIN u1.chatRoomsUser1 c1 " +
            "   WHERE c1.user2 = :user " +
            "   UNION " +
            "   SELECT DISTINCT u2.id FROM User u2 " +
            "   JOIN u2.chatRoomsUser2 c2 " +
            "   WHERE c2.user1 = :user" +
            ") AND u <> :user " +
            "ORDER BY (" +
            "   SELECT MAX(m.createdAt) FROM Mensaje m " +
            "   WHERE (m.user = u OR m.chatRoom.user1 = u OR m.chatRoom.user2 = u) " +
            ") DESC")
    List<User> findUsersWithCommonChatRooms(User user);
    
    @Query("SELECT u FROM User u WHERE u.name LIKE %:q%")
    List<User> findByNameLike(@Param("q") String q);

}
