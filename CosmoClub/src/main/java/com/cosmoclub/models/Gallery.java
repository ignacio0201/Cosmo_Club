package com.cosmoclub.models;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;

@Entity
@Table(name = "gallery")
public class Gallery {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Transient
    private MultipartFile imgFile;
	
	@Column
	private String img;
	
	@OneToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="host_id")
    private User host;
	
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

	public Gallery() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public MultipartFile getImgFile() {
		return imgFile;
	}

	public void setImgFile(MultipartFile imgFile) {
		this.imgFile = imgFile;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public User getHost() {
		return host;
	}

	public void setHost(User host) {
		this.host = host;
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
	
	

}

