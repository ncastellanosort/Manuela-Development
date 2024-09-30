/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.hu.sprint1.Servlets;

import com.mycompany.hu.sprint1.Controllers.PatientController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mycompany.hu.sprint1.Entities.Patient;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nicolas
 */
@WebServlet(name = "SvRegisterPatient", urlPatterns = {"/SvRegisterPatient"})
public class SvRegisterPatient extends HttpServlet {
    
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
        
        String identificationType = request.getParameter("identificationType");
        String identificationNumber = request.getParameter("identificationNumber");
        String name = request.getParameter("name");
        String lastname = request.getParameter("lastname");
        String phoneNumber = request.getParameter("phoneNumber");
        String department = request.getParameter("department");
        String town = request.getParameter("town");
        String houseAddress = request.getParameter("houseAddress");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        
        if (password.equals(confirmPassword)) {
            try {
                patientController.createPatientController(new Patient(identificationNumber, identificationType, name, lastname, phoneNumber, department, town, houseAddress, email, password, confirmPassword));
                response.sendRedirect("WelcomePatient.jsp");
            } catch (Exception ex) {
                Logger.getLogger(SvRegisterPatient.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            response.sendRedirect("PasswordNotEqual.jsp");
        }
        
        processRequest(request, response);
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
