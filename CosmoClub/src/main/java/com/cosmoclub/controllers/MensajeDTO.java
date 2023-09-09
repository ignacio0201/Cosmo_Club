package com.cosmoclub.controllers;

public class MensajeDTO {
	private Long userId; 
    private String content;
    private String userName;
    private Long chatRoomId; // Agregamos el ID de la sala de chat

    public MensajeDTO(String content, String userName, Long chatRoomId, Long userId) {
        this.content = content;
        this.userName = userName;
        this.chatRoomId = chatRoomId; 
        this.userId = userId;
        }

    public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Long getChatRoomId() {
        return chatRoomId;
    }

    public void setChatRoomId(Long chatRoomId) {
        this.chatRoomId = chatRoomId;
    }
}
