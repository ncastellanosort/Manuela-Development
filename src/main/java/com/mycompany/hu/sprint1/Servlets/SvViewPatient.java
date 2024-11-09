/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.hu.sprint1.Servlets;

import com.mycompany.hu.sprint1.Controllers.PatientController;
import com.mycompany.hu.sprint1.Entities.Patient;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nicolas
 */
@WebServlet(name = "SvViewPatient", urlPatterns = {"/SvViewPatient"})
public class SvViewPatient extends HttpServlet {

	PatientController patientController = new PatientController();

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		int patientId = Integer.parseInt(request.getParameter("id"));

		Patient actualPatient = patientController.getPatientByIdController(String.valueOf(patientId));

		request.getSession().setAttribute("actualPatient", actualPatient);

		response.sendRedirect("PatientInfo.jsp");

		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}
