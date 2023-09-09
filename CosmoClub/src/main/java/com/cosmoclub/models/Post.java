package com.cosmoclub.models;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.NotEmpty;

@Entity
@Table(name = "posts")
public class Post {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotEmpty(message = "El título no puede estar vacío.")
	@Column(nullable = false)
	private String title;
	
	@NotEmpty(message = "El post no puede estar vacio.")
	@Column(columnDefinition = "TEXT", nullable = false)
	private String content;
	
	@Column(columnDefinition = "DATETIME", updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;
	@DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;
    
    @Transient
    private String timeAgo;

	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User user;
    
    @OneToMany(mappedBy = "post", cascade = CascadeType.ALL)
	   private List<ImgPost> images;
    
    @OneToMany(mappedBy = "post", cascade = CascadeType.ALL)
	   private List<Comment> comments;
    
    @OneToOne(mappedBy="post", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    private  Notification notification; 
    
    @Transient
    private MultipartFile imgFile;
    
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "ratings", 
        joinColumns = @JoinColumn(name = "post_id"), 
        inverseJoinColumns = @JoinColumn(name = "user_id")
    )
    private List<User> rating_user;
    
    //FECHAS CREACION Y ACTUALIZACION
    @PrePersist
	protected void onCreate(){
   		this.createdAt = new Date();
	this.updatedAt = new Date();
	}
	@PreUpdate
	protected void onUpdate(){
    		this.updatedAt = new Date();
	}
    
	public Post() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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

	public User getUsuario() {
		return user;
	}

	public void setUsuario(User usuario) {
		this.user = usuario;
	}

	public List<ImgPost> getImages() {
		return images;
	}

	public void setImages(List<ImgPost> images) {
		this.images = images;
	}

	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public MultipartFile getImgFile() {
		return imgFile;
	}

	public void setImgFile(MultipartFile imgFile) {
		this.imgFile = imgFile;
	}

	public List<User> getRating_user() {
		return rating_user;
	}

	public Notification getNotification() {
		return notification;
	}

	public void setNotification(Notification notification) {
		this.notification = notification;
	}

	public void setRating_user(List<User> rating_user) {
		this.rating_user = rating_user;
	}
	
	public String getTimeAgo() {
		return timeAgo;
	}
	public void setTimeAgo(String timeAgo) {
		this.timeAgo = timeAgo;
	}

    
}

