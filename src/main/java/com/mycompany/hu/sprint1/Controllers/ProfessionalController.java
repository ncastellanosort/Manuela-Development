/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Controllers;

import com.mycompany.hu.sprint1.Entities.Professional;
import com.mycompany.hu.sprint1.Persistence.ProfessionalPersistenceController;
import java.util.List;

/**
 *
 * @author Nicolas
 */
public class ProfessionalController {

    ProfessionalPersistenceController professionalPersistenceController = new ProfessionalPersistenceController();

    public void createProfessionalController(Professional professional) {
        professionalPersistenceController.createProfessional(professional);
    }

    public Professional getProfessionalByEmailController(String email) {
        return professionalPersistenceController.getProfessionalByEmail(email);
    }

    public List<Professional> getProfessionalsController() {
        return professionalPersistenceController.getProfessionals();
    }

    public Professional getProfessionalByIdController(int id) {
        return professionalPersistenceController.getProfessionalById(id);
    }

    public Professional getProfessionalCedula(String cedula) {
        return professionalPersistenceController.getProfessionalCedula(cedula);
    }

}
