package com.cosmoclub.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.cosmoclub.models.Plantilla;
import com.cosmoclub.models.Tag;
import com.cosmoclub.repositories.PlantillaRepository;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class PlantillaService {
	
	@Autowired
	private PlantillaRepository plantillaRepository;

	public Plantilla saveWiki(Plantilla wiki) {
		return plantillaRepository.save(wiki);
	}

	public Plantilla findPlantillaById(Long id) {
	    return plantillaRepository.findById(id).orElse(null);
	}

	public List<Plantilla> findAll() {
		return plantillaRepository.findAll();
	}
	
	public List<Plantilla> findPlantillasByTitulo(String titulo) {
        return plantillaRepository.findByTituloContaining(titulo);
    }
	
	
	public Page<Plantilla> buscarArticulosPaginados(String palabraClave, Pageable pageable) {
	    return plantillaRepository.findByTituloContainingOrContenidoContainingOrEtiquetasEtiquetaContaining(palabraClave, palabraClave, palabraClave, pageable);
	}
	
	public List<Tag> findAllTags() {
        return plantillaRepository.findAllTags();
    }
	
	public List<Plantilla> findPlantillasByEtiqueta(Tag etiqueta) {
        return plantillaRepository.findByEtiquetas(etiqueta);
    }
	
	public Plantilla findUltimoArticuloCreado() {
	    // Encuentra el último artículo creado por orden descendente de ID
	    Plantilla articulo = plantillaRepository.findTopByOrderByIdDesc();

	    // Comprueba si se encontró algún artículo y devuelve el primero (el último creado)
	    if (articulo != null) {
	        return articulo;
	    } else {
	        return null; // Retorna null si no se encontraron artículos en la base de datos
	    }
	}
	
	public List<Plantilla> findUltimos10Articulos() {
	    // Ordena los artículos por ID en orden descendente para obtener los últimos 10
	    return plantillaRepository.findTop10ByOrderByIdDesc();
	}
	
	 public long countArticulos() {
	        return plantillaRepository.count();
	    }
	
}
