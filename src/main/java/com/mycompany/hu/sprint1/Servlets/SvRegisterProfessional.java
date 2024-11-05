/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.hu.sprint1.Servlets;

import com.mycompany.hu.sprint1.Controllers.ProfessionalController;
import com.mycompany.hu.sprint1.Entities.Professional;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nicolas
 */
@WebServlet(name = "SvRegisterProfessional", urlPatterns = {"/SvRegisterProfessional"})
public class SvRegisterProfessional extends HttpServlet {

    ProfessionalController professionalController = new ProfessionalController();

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
        String speciality = request.getParameter("speciality");
        String name = request.getParameter("name");
        String lastname = request.getParameter("lastname");
        String phoneNumber = request.getParameter("phoneNumber");
        String department = request.getParameter("department");
        String town = request.getParameter("town");
        String houseAddress = request.getParameter("houseAddress");
        String professionalAddress = request.getParameter("professionalAddress");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String description = request.getParameter("description");

        if (password.equals(confirmPassword)) {
            professionalController.createProfessionalController(new Professional(identificationType, identificationNumber, speciality, name, lastname, phoneNumber, department, town, houseAddress, professionalAddress, email, password, confirmPassword, description));
            response.sendRedirect("WelcomeProfessional.jsp");
        } else {
            response.sendRedirect("PasswordNotEqual.jsp");
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
