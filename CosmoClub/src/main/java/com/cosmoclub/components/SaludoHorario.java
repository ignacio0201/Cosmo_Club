package com.cosmoclub.components;

import org.springframework.stereotype.Component;
import java.time.LocalTime;

@Component
public class SaludoHorario {

    public static String obtenerSaludo() {
        LocalTime horaActual = LocalTime.now();
        int hora = horaActual.getHour();

        if (hora >= 6 && hora < 12) {
            return "Buenos dias";
        } else if (hora >= 12 && hora < 18) {
            return "Buenas tardes";
        } else {
            return "Buenas noches";
        }
    }
}
