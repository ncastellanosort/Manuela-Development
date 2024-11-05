/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Tools;

import com.mycompany.hu.sprint1.Controllers.ProfessionalController;
import com.mycompany.hu.sprint1.Controllers.TrastornoController;
import com.mycompany.hu.sprint1.Entities.Patient;
import com.mycompany.hu.sprint1.Entities.Professional;
import com.mycompany.hu.sprint1.Entities.Trastorno;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/**
 *
 * @author Nicolas
 */
public class ActiveProfessional {

    private static ProfessionalController professionalController = new ProfessionalController();
    private static TrastornoController trastornoController = new TrastornoController();

    public static List<Professional> obtenerProfesionalesActivos(Patient currentP) {
        List<Trastorno> trastornos = trastornoController.getTrastornosController();
        HashSet<Integer> idsNoRepetidos = new HashSet<>();
        ArrayList<Professional> profesionalesActivos = new ArrayList<>();

        for (Trastorno trastorno : trastornos) {
            if (trastorno.getPatient_id().equals(currentP.getIdentificationNumber())) {
                idsNoRepetidos.add(Integer.parseInt(trastorno.getProfessional_id()));
            }
        }

        for (Integer id : idsNoRepetidos) {
            Professional p = professionalController.getProfessionalCedula(String.valueOf(id));
            profesionalesActivos.add(p);
        }

        return profesionalesActivos;
    }
}
