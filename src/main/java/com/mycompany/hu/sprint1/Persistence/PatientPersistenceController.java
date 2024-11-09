/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Persistence;

import com.mycompany.hu.sprint1.Entities.Patient;

/**
 *
 * @author Nicolas
 */
public class PatientPersistenceController {

	PatientJpaController patientJpaController = new PatientJpaController();

	public void createPatient(Patient patient) throws Exception {
		patientJpaController.create(patient);
	}

	public Patient getPatientByEmail(String email) {
		return patientJpaController.getByEmail(email);
	}

	public Patient getPatientByCedula(String cedula) {
		return patientJpaController.getByCedula(cedula);
	}

	public Patient getPatientById(String id) {
		return patientJpaController.findPatient(id);
	}
}
