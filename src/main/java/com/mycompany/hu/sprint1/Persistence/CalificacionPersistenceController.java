/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Persistence;

import com.mycompany.hu.sprint1.Entities.Calificacion;

/**
 *
 * @author Nicolas
 */
public class CalificacionPersistenceController {

    CalificacionJpaController calificacionJpaController = new CalificacionJpaController();
    
    public void crearCalificacion(Calificacion calificacion) {
        calificacionJpaController.create(calificacion);
    }
}
