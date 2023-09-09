package com.cosmoclub.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import jakarta.servlet.http.HttpServletResponse;

@Controller
public class ImageController {
	
	 @GetMapping("/img/{imageName:.+}")
	    public void getImage(@PathVariable String imageName, HttpServletResponse response) throws IOException {
	        // Establece los encabezados de control de caché para evitar el almacenamiento en caché
	        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	        response.setHeader("Pragma", "no-cache");
	        response.setDateHeader("Expires", 0);

	        String imagePath = "src/main/resources/static/img/";

	     
	        String imageFullPath = imagePath + imageName;

	    
	        byte[] imageData = Files.readAllBytes(Paths.get(imageFullPath));

	 
	        response.setContentType(MediaType.IMAGE_JPEG_VALUE);

	        // Envía la imagen como respuesta
	        response.getOutputStream().write(imageData);
	    }
}
