package com.cosmoclub.controllers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cosmoclub.events.ArticuloEvent;
import com.cosmoclub.models.Plantilla;
import com.cosmoclub.models.Tag;
import com.cosmoclub.services.PlantillaService;
import com.cosmoclub.services.TagService;

import jakarta.servlet.ServletContext;
import jakarta.validation.Valid;

@Controller
public class PlantillaController {
	@Autowired
	private PlantillaService plantillaService;
	
	@Autowired
	private TagService tagService;
	
	@Autowired
    private ServletContext servletContext;
	
	@Autowired
	private ApplicationEventPublisher eventPublisher;

	@GetMapping("/wiki")
	public String indice(Model model,@ModelAttribute("tag")Tag tag,BindingResult result) {
		@SuppressWarnings("unchecked")
		Map<Tag, List<Plantilla>> articulosPorEtiqueta = (Map<Tag, List<Plantilla>>) servletContext.getAttribute("articulosPorEtiqueta");
		
		Plantilla ultimoArticulo = plantillaService.findUltimoArticuloCreado();
		 
		List<Plantilla> ultimosArticulos = plantillaService.findUltimos10Articulos();
		
		long cantidadArticulos = plantillaService.countArticulos();
		 
		
		model.addAttribute("articulosPorEtiqueta", articulosPorEtiqueta);
		model.addAttribute("ultimoArticulo", ultimoArticulo);
		 if (ultimoArticulo != null) {
		        model.addAttribute("tags", ultimoArticulo.getEtiquetas());
		    }
		model.addAttribute("ultimosArticulos", ultimosArticulos);
		model.addAttribute("cantidadArticulos", cantidadArticulos);
		
		return "views/wiki_index.jsp";
	}
	
	@PostMapping("/wiki")
	public String crearTag(@Valid @ModelAttribute("tag")Tag tag,BindingResult result,Model model) {
		@SuppressWarnings("unchecked")
		Map<Tag, List<Plantilla>> articulosPorEtiqueta = (Map<Tag, List<Plantilla>>) servletContext.getAttribute("articulosPorEtiqueta");
		
		Plantilla ultimoArticulo = plantillaService.findUltimoArticuloCreado();
		 
		List<Plantilla> ultimosArticulos = plantillaService.findUltimos10Articulos();
		
		long cantidadArticulos = plantillaService.countArticulos();
		
		if(result.hasErrors()) {
			model.addAttribute("articulosPorEtiqueta", articulosPorEtiqueta);
			model.addAttribute("ultimoArticulo", ultimoArticulo);
			model.addAttribute("ultimosArticulos", ultimosArticulos);
			model.addAttribute("cantidadArticulos", cantidadArticulos);
			
			return "views/wiki_index.jsp";
		}
		tagService.crearTag(tag);
		return "redirect:/wiki";
	}
	
	@GetMapping("/buscar")
	public String buscarArticuloPaginado(@RequestParam("articulo") String articulo, @RequestParam(defaultValue = "0") int page, Model model) {
		
		 if (articulo.isEmpty()) {
		       
			 	return "redirect:/buscar-todos";
		    }
	   
	    
		Pageable pageable = PageRequest.of(page, 5);
	    Page<Plantilla> articulosEncontradosPage = plantillaService.buscarArticulosPaginados(articulo, pageable);
	    
	    @SuppressWarnings("unchecked")
		Map<Tag, List<Plantilla>> articulosPorEtiqueta = (Map<Tag, List<Plantilla>>) servletContext.getAttribute("articulosPorEtiqueta");
        

	    List<List<String>> etiquetasPorArticulo = new ArrayList<>();
	    for (Plantilla articuloEncontrado : articulosEncontradosPage.getContent()) {
	        List<String> etiquetasArticulo = articuloEncontrado.getEtiquetas().stream().map(Tag::getEtiqueta).toList();
	        etiquetasPorArticulo.add(etiquetasArticulo);
	    }

	    model.addAttribute("articulosEncontrados", articulosEncontradosPage);
	    model.addAttribute("etiquetasPorArticulo", etiquetasPorArticulo);
	    model.addAttribute("articulosPorEtiqueta", articulosPorEtiqueta);

	    // Verificar si no se encontraron resultados
	    if (articulosEncontradosPage.isEmpty()) {
	        model.addAttribute("mensajeNoEncontrado", "No se encontraron resultados para la búsqueda.");
	    }

	    return "views/busqueda.jsp";
	}
	
	@GetMapping("/buscar-todos")
	public String mostrarTodosLosArticulos(@RequestParam(defaultValue = "0") int page, Model model) {
	
	    Pageable pageable = PageRequest.of(page, 5);
	    Page<Plantilla> todosLosArticulos = plantillaService.buscarArticulosPaginados("", pageable);

	 
	    @SuppressWarnings("unchecked")
		Map<Tag, List<Plantilla>> articulosPorEtiqueta = (Map<Tag, List<Plantilla>>) servletContext.getAttribute("articulosPorEtiqueta");
	    
	    List<List<String>> etiquetasPorArticulo = new ArrayList<>();
	    for (Plantilla articuloEncontrado : todosLosArticulos.getContent()) {
	        List<String> etiquetasArticulo = articuloEncontrado.getEtiquetas().stream().map(Tag::getEtiqueta).toList();
	        etiquetasPorArticulo.add(etiquetasArticulo);
	    }
	  

	    model.addAttribute("articulosEncontrados", todosLosArticulos);
	    model.addAttribute("etiquetasPorArticulo", etiquetasPorArticulo);
	    model.addAttribute("articulosPorEtiqueta", articulosPorEtiqueta);

	   

	    return "views/busqueda.jsp"; 
	}
	
	@PostMapping("/buscar")
	public String buscarArticulo(@RequestParam("articulo") String articulo, Model model, @RequestParam(defaultValue = "0") int page) {
		
		 if (articulo.isEmpty()) {
		  
			 return "redirect:/buscar-todos";
		    }
	    
	    Pageable pageable = PageRequest.of(page, 5);
	    Page<Plantilla> articulosEncontradosPage = plantillaService.buscarArticulosPaginados(articulo, pageable);
	    
	  
	    @SuppressWarnings("unchecked")
	    Map<Tag, List<Plantilla>> articulosPorEtiqueta = (Map<Tag, List<Plantilla>>) servletContext.getAttribute("articulosPorEtiqueta");
	    
	    List<List<String>> etiquetasPorArticulo = new ArrayList<>();
	    for (Plantilla articuloEncontrado : articulosEncontradosPage.getContent()) {
	        List<String> etiquetasArticulo = articuloEncontrado.getEtiquetas().stream().map(Tag::getEtiqueta).toList();
	        etiquetasPorArticulo.add(etiquetasArticulo);
	    }
	    
	    if (articulosEncontradosPage.isEmpty()) {
	        model.addAttribute("mensajeNoEncontrado", "No se encontraron resultados para la búsqueda: " + articulo);
	    }
	    
	    model.addAttribute("articulosEncontrados", articulosEncontradosPage);
	    model.addAttribute("etiquetasPorArticulo", etiquetasPorArticulo);
	    model.addAttribute("articulosPorEtiqueta", articulosPorEtiqueta);
	   

	    return "views/busqueda.jsp";
	}
	
	@GetMapping("/nuevo")
	public String nuevoArticulo(Model model) {
		
	    @SuppressWarnings("unchecked")
		Map<Tag, List<Plantilla>> articulosPorEtiqueta = (Map<Tag, List<Plantilla>>) servletContext.getAttribute("articulosPorEtiqueta");
		
		model.addAttribute("articulosPorEtiqueta", articulosPorEtiqueta);
		
		model.addAttribute("tags", tagService.findAll());
	
		return "views/indexNuevo.jsp";

	}
	
	
	@PostMapping("/nuevo")
	public String saveWiki(@RequestParam("newWiki") String wiki, @RequestParam("titulo") String titulo, @RequestParam("etiquetas") String etiquetasString)
	         {

	        Plantilla newWiki = new Plantilla();
	        newWiki.setContenido(wiki);
	        newWiki.setTitulo(titulo);
	        
	        List<Long> etiquetasIds = Arrays.stream(etiquetasString.split(",")).map(Long::parseLong).toList();
	        
	        List<Tag> etiquetas = tagService.findByIds(etiquetasIds);
	        
	        newWiki.setEtiquetas(etiquetas);

	        plantillaService.saveWiki(newWiki);

	        eventPublisher.publishEvent(new ArticuloEvent(this));
	        

	    return "redirect:/wiki";
	}

	@GetMapping("/wiki/{id}")
	public String articulo(@PathVariable Long id, Model model) {
		    
		
	    @SuppressWarnings("unchecked")
		Map<Tag, List<Plantilla>> articulosPorEtiqueta = (Map<Tag, List<Plantilla>>) servletContext.getAttribute("articulosPorEtiqueta");
		
		
		Plantilla wiki = plantillaService.findPlantillaById(id);
		model.addAttribute("wiki", wiki);
		model.addAttribute("tags", wiki.getEtiquetas());
		model.addAttribute("articulosPorEtiqueta", articulosPorEtiqueta);
		return "views/wiki.jsp";
	}
	
	


}
