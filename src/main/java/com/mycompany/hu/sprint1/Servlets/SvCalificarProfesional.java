/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.hu.sprint1.Servlets;

import com.mycompany.hu.sprint1.Controllers.CalificacionController;
import com.mycompany.hu.sprint1.Entities.Calificacion;
import com.mycompany.hu.sprint1.Entities.Patient;
import com.mycompany.hu.sprint1.Entities.Professional;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SvCalificarProfesional", urlPatterns = {"/SvCalificarProfesional"})
public class SvCalificarProfesional extends HttpServlet {

    CalificacionController calificacionController = new CalificacionController();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Patient paciente = (Patient) request.getSession().getAttribute("currentPatient");
        Professional profesional = (Professional) request.getSession().getAttribute("actualProfessional");

        String nota = request.getParameter("nota");
        int puntuacion = Integer.parseInt(request.getParameter("puntuacion"));

        calificacionController.crearCalificacionController(new Calificacion(paciente.getIdentificationNumber(), profesional.getIdentificationNumber(), nota, puntuacion));

        response.sendRedirect("ProfesionalCalificado.jsp");

        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
