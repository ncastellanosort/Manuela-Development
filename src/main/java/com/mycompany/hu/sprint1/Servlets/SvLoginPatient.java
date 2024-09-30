/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.hu.sprint1.Servlets;

import com.mycompany.hu.sprint1.Controllers.PatientController;
import com.mycompany.hu.sprint1.Entities.Patient;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "SvLoginPatient", urlPatterns = {"/SvLoginPatient"})
public class SvLoginPatient extends HttpServlet {

    PatientController patientController = new PatientController();

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

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Patient currentPatient = patientController.getPatientByEmailController(email);

        HttpSession httpSession = request.getSession();

        httpSession.setAttribute("currentPatient", currentPatient);

        if (currentPatient == null) {
            response.sendRedirect("LoginPatient.jsp");
            return;
        }

        if (!currentPatient.getPassword().equals(password)) {
            response.sendRedirect("UserDoNotExist.jsp");
            return;
        }

        httpSession.setAttribute("currentPatient", currentPatient);
        response.sendRedirect("PatientMain.jsp");

        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
