/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Controllers;

import com.mycompany.hu.sprint1.Entities.Trastorno;
import com.mycompany.hu.sprint1.Persistence.TrastornoPersistenceController;
import java.util.List;

/**
 *
 * @author Nicolas
 */
public class TrastornoController {

    TrastornoPersistenceController trastornoPersistenceController = new TrastornoPersistenceController();

    public void crearTrastornoController(Trastorno trastorno) {
        trastornoPersistenceController.crearTrastorno(trastorno);
    }

    public List<Trastorno> getTrastornosController() {
        return trastornoPersistenceController.traerTrastornos();
    }

}
