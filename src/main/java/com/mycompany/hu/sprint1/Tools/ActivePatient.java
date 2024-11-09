/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Tools;

import com.mycompany.hu.sprint1.Controllers.PatientController;
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
public class ActivePatient {

	private static PatientController patientController = new PatientController();
	private static TrastornoController trastornoController = new TrastornoController();

	public static List<Patient> obtenerPacientesActivos(Professional currentP) {
		HashSet<Integer> idsNoRepetidos = new HashSet<>();
		ArrayList<Patient> pacientesActivos = new ArrayList<>();
		List<Trastorno> trastornos = trastornoController.getTrastornosController();

		for (Trastorno trastorno : trastornos) {
			if (trastorno.getProfessional_id().equals(currentP.getIdentificationNumber())) {
				idsNoRepetidos.add(Integer.valueOf(trastorno.getPatient_id()));
			}
		}

		for (Integer id : idsNoRepetidos) {
			Patient p = patientController.getPatientByCedulaController(String.valueOf(id));
			pacientesActivos.add(p);
		}

		return pacientesActivos;
	}

}
