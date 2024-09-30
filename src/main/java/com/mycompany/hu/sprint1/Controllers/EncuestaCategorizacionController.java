/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Controllers;

import com.mycompany.hu.sprint1.Entities.EncuestaCategorizacionVO;
import com.mycompany.hu.sprint1.Persistence.EncuestaCategorizacionVOController;

/**
 *
 * @author Nicolas
 */
public class EncuestaCategorizacionController {
    
    EncuestaCategorizacionVOController encuestaCategorizacionVOController = new EncuestaCategorizacionVOController();
    
    public void crearEncuestraCategorizacion(EncuestaCategorizacionVO encuestaCategorizacion) {
        encuestaCategorizacionVOController.crearEncuestaCategorizacion(encuestaCategorizacion);
    }
    
}
