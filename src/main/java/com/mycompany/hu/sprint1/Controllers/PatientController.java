/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Controllers;

import com.mycompany.hu.sprint1.Entities.Patient;
import com.mycompany.hu.sprint1.Persistence.PatientPersistenceController;

/**
 *
 * @author Nicolas
 */
public class PatientController {

    PatientPersistenceController patientPersistenceController = new PatientPersistenceController();

    public void createPatientController(Patient patient) throws Exception {
        patientPersistenceController.createPatient(patient);
    }

    public Patient getPatientByEmailController(String patient) {
        return patientPersistenceController.getPatientByEmail(patient);
    }
}
