package com.cosmoclub.models;

import java.util.Date;
import java.util.List;

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
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;

@Entity
@Table(name ="usuarios")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String status;
	
	@Size(max = 20, message = "El nombre debe tener un maximo de 20 caracteres.")
	@NotEmpty(message = "El nombre es requerido.")
	@Column(nullable = false)
	private String name;
	
	@Size(max = 20, message = "El apellido debe tener un maximo de 20 caracteres.")
	@NotEmpty(message = "El Apellido es requerido.")
	@Column(nullable = false)
	private String last_name;
	
	@Size(min = 9, max = 60, message = "El correo debe ser entre 9 y 60 caracteres")
	@Email(message = "Debe ser un correo valido.")
	@Column(nullable = false, unique = true)
	private String email;

	@Min(value = 0)
	 @Max(value = 5000)
	 @Column
	 private Long points;
	 
	@Column(columnDefinition = "ENUM('Admin','Usuario')")
	 public String rol;
	
	@Column
	public String user_img;
	
	@Transient
    private MultipartFile imgFile;
	
	@Size(min = 8, message = "Contraseña debe tener más de 8 caracteres.")
	@Column(nullable = false)
	private String password;
	
	@Transient
	@Column
	private String passwordConfirmation;
	
	@Column(columnDefinition = "DATETIME", updatable=false)
    private Date createdAt;
    private Date updatedAt;
    
    @OneToMany(mappedBy="user", fetch = FetchType.LAZY)
    private List<Post> post;
    
    @OneToMany(mappedBy="user", fetch = FetchType.LAZY)
    private List<Comment> comment;
    
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "ratings", 
        joinColumns = @JoinColumn(name = "user_id"), 
        inverseJoinColumns = @JoinColumn(name = "post_id")
    )
    private List<Post> rating_post;
    
    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Progress> progress;
    
   @OneToOne(mappedBy="host", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    private  Gallery gallery;    
   
   @OneToMany(mappedBy="user", fetch = FetchType.LAZY)
   private List<Notification> notification;
   
   //Union con los mensajes y chatroom
   
   @OneToMany(mappedBy = "user")
   private List<Mensaje> messages;

   @OneToMany(mappedBy = "user1")
   private List<ChatRoom> chatRoomsUser1;

   @OneToMany(mappedBy = "user2")
   private List<ChatRoom> chatRoomsUser2;

	public User() {
		super();
	}
	
	public List<Mensaje> getMessages() {
		return messages;
	}

	public void setMessages(List<Mensaje> messages) {
		this.messages = messages;
	}

	public List<ChatRoom> getChatRoomsUser1() {
		return chatRoomsUser1;
	}

	public void setChatRoomsUser1(List<ChatRoom> chatRoomsUser1) {
		this.chatRoomsUser1 = chatRoomsUser1;
	}

	public List<ChatRoom> getChatRoomsUser2() {
		return chatRoomsUser2;
	}

	public void setChatRoomsUser2(List<ChatRoom> chatRoomsUser2) {
		this.chatRoomsUser2 = chatRoomsUser2;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Long getPoints() {
		return points;
	}

	public void setPoints(Long points) {
		this.points = points;
	}

	public String getRol() {
		return rol;
	}

	public void setRol(String rol) {
		this.rol = rol;
	}

	public String getUser_img() {
		return user_img;
	}

	public void setUser_img(String user_img) {
		this.user_img = user_img;
	}

	public MultipartFile getImgFile() {
		return imgFile;
	}

	public void setImgFile(MultipartFile imgFile) {
		this.imgFile = imgFile;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPasswordConfirmation() {
		return passwordConfirmation;
	}

	public void setPasswordConfirmation(String passwordConfirmation) {
		this.passwordConfirmation = passwordConfirmation;
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

	public List<Post> getPost() {
		return post;
	}

	public void setPost(List<Post> post) {
		this.post = post;
	}

	public List<Comment> getComment() {
		return comment;
	}

	public void setComment(List<Comment> comment) {
		this.comment = comment;
	}

	public List<Post> getRating_post() {
		return rating_post;
	}

	public void setRating_post(List<Post> rating_post) {
		this.rating_post = rating_post;
	}

	public List<Progress> getProgress() {
		return progress;
	}

	public void setProgress(List<Progress> progress) {
		this.progress = progress;
	}

	public Gallery getGallery() {
		return gallery;
	}

	public void setGallery(Gallery gallery) {
		this.gallery = gallery;
	}	

	public List<Notification> getNotification() {
		return notification;
	}

	public void setNotification(List<Notification> notification) {
		this.notification = notification;
	}

	
	
}

