package com.cosmoclub.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosmoclub.models.ChatRoom;
import com.cosmoclub.models.Mensaje;
import com.cosmoclub.repositories.ChatRoomRepository;
import com.cosmoclub.repositories.MensajeRepository;

@Service
public class MensajeService {

    @Autowired
    private MensajeRepository mensajeRepository;
    @Autowired
    private ChatRoomRepository chatRoomRepository;
        

    public Map<ChatRoom, Mensaje> obtenerUltimosMensajesPorChatRooms(Long usuarioId) {
        List<ChatRoom> chatRooms = chatRoomRepository.findByUser1_IdOrUser2_Id(usuarioId, usuarioId);
        
        Map<ChatRoom, Mensaje> ultimosMensajesPorChatRooms = new HashMap<>();
        for (ChatRoom chatRoom : chatRooms) {
            Mensaje ultimoMensaje = mensajeRepository.findTopByChatRoomOrderByCreatedAtDesc(chatRoom);
            ultimosMensajesPorChatRooms.put(chatRoom, ultimoMensaje);
        }
        
        return ultimosMensajesPorChatRooms;
    }
}