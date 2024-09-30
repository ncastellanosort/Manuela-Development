/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Persistence;

import com.mycompany.hu.sprint1.Entities.EncuestaCategorizacionVO;

/**
 *
 * @author Nicolas
 */
public class EncuestaCategorizacionVOController {
    
    EncuestaCategorizacionVOJpaController encuestaCategorizacionVOJpaController = new EncuestaCategorizacionVOJpaController();
    
    public void crearEncuestaCategorizacion(EncuestaCategorizacionVO encuestaCategorizacion) {
        encuestaCategorizacionVOJpaController.create(encuestaCategorizacion);
    }
}
