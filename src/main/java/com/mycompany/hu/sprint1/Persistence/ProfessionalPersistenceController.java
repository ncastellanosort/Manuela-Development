/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Persistence;

import com.mycompany.hu.sprint1.Entities.Professional;
import java.util.List;

/**
 *
 * @author Nicolas
 */
public class ProfessionalPersistenceController {

    ProfessionalJpaController professionalJpaController = new ProfessionalJpaController();

    public void createProfessional(Professional professional) {
        professionalJpaController.create(professional);
    }

    public Professional getProfessionalByEmail(String email) {
        return professionalJpaController.getByEmail(email);
    }

    public List<Professional> getProfessionals() {
        return professionalJpaController.findProfessionalEntities();
    }

    public Professional getProfessionalById(int id) {
        return professionalJpaController.findProfessional(id);
    }

    public Professional getProfessionalCedula(String cedula) {
        return professionalJpaController.getByCedula(cedula);
    }

}
