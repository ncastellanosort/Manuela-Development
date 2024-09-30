/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Persistence;

import com.mycompany.hu.sprint1.Entities.Trastorno;

/**
 *
 * @author Nicolas
 */
public class TrastornoPersistenceController {

    TrastornoJpaController trastornoJpaController = new TrastornoJpaController();
    
    public void crearTrastorno(Trastorno trastorno) {
        trastornoJpaController.create(trastorno);
    }
}
