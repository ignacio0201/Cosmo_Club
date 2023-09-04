package com.cosmoclub.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cosmoclub.models.Plantilla;
import com.cosmoclub.models.Tag;

@Repository
public interface PlantillaRepository extends CrudRepository<Plantilla, Long> {
	
	List<Plantilla> findAll();
	
	List<Plantilla> findByTituloContaining(String titulo);
	
	
	Optional<Plantilla> findByTitulo(String titulo);
	

	Page<Plantilla> findByTituloContainingOrContenidoContainingOrEtiquetasEtiquetaContaining(String palabraClave,String palabraClave2, String palabraClave3, Pageable pageable);
	
	@Query("SELECT DISTINCT e FROM Plantilla p JOIN p.etiquetas e")
    List<Tag> findAllTags();
	
	List<Plantilla> findByEtiquetas(Tag etiqueta);
	
	Plantilla findTopByOrderByIdDesc();
	
	List<Plantilla> findTop10ByOrderByIdDesc();
	
	long count();

}
