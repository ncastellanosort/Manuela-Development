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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nicolas
 */
@WebServlet(name = "SvLoginProfessional", urlPatterns = {"/SvLoginProfessional"})
public class SvLoginProfessional extends HttpServlet {

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

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Professional currentProfessional = professionalController.getProfessionalByEmailController(email);

        System.out.println(currentProfessional.getName());

        HttpSession httpSession = request.getSession();

        if (currentProfessional == null) {
            response.sendRedirect("LoginProfessional.jsp");
            return;
        }

        if (!currentProfessional.getPassword().equals(password)) {
            response.sendRedirect("UserDoNotExist.jsp");
            return;
        }

        httpSession.setAttribute("currentProfessional", currentProfessional);
        response.sendRedirect("ProfessionalMain.jsp");

        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
