package com.cosmoclub.models;

import java.util.Date;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Size;

@Entity
@Table(name="messages")
public class Message {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Size(min = 1,max = 1000)
	@Column(columnDefinition = "TEXT",nullable = false)
	private String message;
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="receptor_id")
    private User receptor;
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="emisor_id")
    private User emisor;

	
	@OneToOne(mappedBy="message", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    private  Notification notification; 
	
	
	@Column(columnDefinition = "DATETIME", updatable = false)
	private Date createdAt;
	private Date updatedAt;

	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
		this.updatedAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

	public Message() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public User getEmisor() {
		return emisor;
	}

	public void setEmisor(User emisor) {
		this.emisor = emisor;
	}

	public User getReceptor() {
		return receptor;
	}

	public void setReceptor(User receptor) {
		this.receptor = receptor;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public Notification getNotification() {
		return notification;
	}

	public void setNotification(Notification notification) {
		this.notification = notification;
	}
	
	

}

