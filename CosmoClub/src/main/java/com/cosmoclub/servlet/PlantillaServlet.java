package com.cosmoclub.servlet;

import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cosmoclub.models.Plantilla;
import com.cosmoclub.models.Tag;
import com.cosmoclub.services.PlantillaService;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
@Component
@WebListener
public class PlantillaServlet implements ServletContextListener{
	
	@Autowired
	private PlantillaService plantillaService;
	
	@Override
	public void contextInitialized(ServletContextEvent servletContextEvent) {
	    // Obtener la lista de etiquetas y ordenarlas alfabéticamente
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
	    ServletContext servletContext = servletContextEvent.getServletContext();
	    servletContext.setAttribute("articulosPorEtiqueta", articulosPorEtiqueta);
	}

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        // Limpieza cuando la aplicación se detenga
    }

}
