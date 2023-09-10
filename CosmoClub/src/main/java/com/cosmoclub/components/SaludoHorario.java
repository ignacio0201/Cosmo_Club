package com.cosmoclub.components;

import org.springframework.stereotype.Component;
import java.time.LocalTime;

@Component
public class SaludoHorario {
	
	    public String obtenerSaludo() {
	        LocalTime horaActual = LocalTime.now();
	        
	        if (horaActual.isBefore(LocalTime.of(12, 0))) {
	            return "Buenos días";
	        } else if (horaActual.isBefore(LocalTime.of(18, 0))) {
	            return "Buenas tardes";
	        } else {
	            return "Buenas noches";
	        }
	    }
	
}
