package com.cosmoclub.components;

import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

import com.cosmoclub.events.ArticuloEvent;
import com.cosmoclub.models.Plantilla;
import com.cosmoclub.models.Tag;
import com.cosmoclub.services.PlantillaService;

import jakarta.servlet.ServletContext;

@Component
public class ActualizarArticulosListener {
	
	@Autowired
	private PlantillaService plantillaService;
	
	@Autowired
    private ServletContext servletContext;
	
	@EventListener
    public void handleNuevoArticuloEvent(ArticuloEvent event) {
		  List<Tag> etiquetas = plantillaService.findAllTags();
	        etiquetas.sort(Comparator.comparing(Tag::getEtiqueta));

	        // Invertir el orden de la lista de etiquetas
	        Collections.reverse(etiquetas);

	        // Construir el mapa articulosPorEtiqueta y almacenarlo en el contexto de la aplicación
	        Map<Tag, List<Plantilla>> articulosPorEtiqueta = new HashMap<>();
	        for (Tag etiqueta : etiquetas) {
	            List<Plantilla> articulosRelacionados = plantillaService.findPlantillasByEtiqueta(etiqueta);
	            articulosPorEtiqueta.put(etiqueta, articulosRelacionados);
	        }

	        // Almacenar el mapa en el contexto de la aplicación
	        servletContext.setAttribute("articulosPorEtiqueta", articulosPorEtiqueta);
	    }
    }


