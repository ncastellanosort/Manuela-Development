/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Controllers;

import com.mycompany.hu.sprint1.Entities.EncuestaDiariaVO;
import com.mycompany.hu.sprint1.Persistence.EncuestaDiariaVOController;
import java.util.List;

/**
 *
 * @author Nicolas
 */
public class EncuestaDiariaController {

    EncuestaDiariaVOController encuestaDiariaVOController = new EncuestaDiariaVOController();

    public void crearEncuestaDiariaController(EncuestaDiariaVO encuestaDiaria) {
        encuestaDiariaVOController.crearEncuesta(encuestaDiaria);
    }

    public List<EncuestaDiariaVO> getEncuestasDiariasController() {
        return encuestaDiariaVOController.getEncuestasDiarias();
    }
}
