/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Persistence;

import com.mycompany.hu.sprint1.Entities.EncuestaDiariaVO;
import java.util.List;

/**
 *
 * @author Nicolas
 */
public class EncuestaDiariaVOController {

    EncuestaDiariaVOJpaController encuestaDiariaVOJpaController = new EncuestaDiariaVOJpaController();

    public void crearEncuesta(EncuestaDiariaVO encuestaDiaria) {
        encuestaDiariaVOJpaController.create(encuestaDiaria);
    }

    public List<EncuestaDiariaVO> getEncuestasDiarias() {
        return encuestaDiariaVOJpaController.findEncuestaDiariaVOEntities();
    }

}
