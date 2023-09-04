package com.cosmoclub.models;

import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "tags")
public class Tag {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@Size(min = 1, max = 255)
	private String etiqueta;
	
	
	@Column(columnDefinition = "DATETIME", updatable=false)
    private Date createdAt;
    private Date updatedAt;
	
	 @ManyToMany(fetch = FetchType.LAZY)
	    @JoinTable(
	        name = "plantilla_tag", 
	        joinColumns = @JoinColumn(name = "tag_id"), 
	        inverseJoinColumns = @JoinColumn(name = "plantilla_id")
	    )
	    private List<Plantilla> articulos;
	 
	 
	@PrePersist
	    protected void onCreate(){
	        this.createdAt = new Date();
	        this.updatedAt = new Date();
	    }
	    @PreUpdate
	    protected void onUpdate(){
	        this.updatedAt = new Date();
	    }
		public Tag() {
			super();
		}
		public Long getId() {
			return id;
		}
		public void setId(Long id) {
			this.id = id;
		}
		public String getEtiqueta() {
			return etiqueta;
		}
		public void setEtiqueta(String etiqueta) {
			this.etiqueta = etiqueta;
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
		public List<Plantilla> getArticulos() {
			return articulos;
		}
		public void setArticulos(List<Plantilla> articulos) {
			this.articulos = articulos;
		}
	
	    
		
	    
}
