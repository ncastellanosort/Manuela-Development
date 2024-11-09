/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Tools;

import com.mycompany.hu.sprint1.Controllers.TrastornoController;
import com.mycompany.hu.sprint1.Entities.Patient;
import com.mycompany.hu.sprint1.Entities.Trastorno;
import java.util.List;

/**
 *
 * @author Nicolas
 */
public class Tools {

	private static TrastornoController trastornoController = new TrastornoController();

	public String getTrastorno(Patient p) {

		String nm = "";

		List<Trastorno> trs = trastornoController.getTrastornosController();
		for (Trastorno trastorno : trs) {
			if (trastorno.getPatient_id().equals(p.getIdentificationNumber())) {
				nm = trastorno.getNombreDelTranstorno();
			}
		}
		return nm;
	}
}
