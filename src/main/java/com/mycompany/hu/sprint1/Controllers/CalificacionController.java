/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Controllers;

import com.mycompany.hu.sprint1.Entities.Calificacion;
import com.mycompany.hu.sprint1.Persistence.CalificacionPersistenceController;

/**
 *
 * @author Nicolas
 */
public class CalificacionController {
    
    CalificacionPersistenceController calificacionPersistenceController = new CalificacionPersistenceController();
    
    public void crearCalificacionController(Calificacion calificacion) {
        calificacionPersistenceController.crearCalificacion(calificacion);
    }
}
