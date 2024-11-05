/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.hu.sprint1.Servlets;

import com.mycompany.hu.sprint1.Controllers.ProfessionalController;
import com.mycompany.hu.sprint1.Controllers.TrastornoController;
import com.mycompany.hu.sprint1.Entities.EncuestaCategorizacionVO;
import com.mycompany.hu.sprint1.Entities.Patient;
import com.mycompany.hu.sprint1.Entities.Professional;
import com.mycompany.hu.sprint1.Entities.Trastorno;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "SvEncuestaCategorizacion", urlPatterns = {"/SvEncuestaCategorizacion"})
public class SvEncuestaCategorizacion extends HttpServlet {

    TrastornoController trastornoController = new TrastornoController();
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
        processRequest(request, response);

        EncuestaCategorizacionVO encuestaCatego = new EncuestaCategorizacionVO();

        int estadoAnimo = Integer.parseInt(request.getParameter("EstadoAnimo"));
        int situacionEstresante = Integer.parseInt(request.getParameter("SituacionEstresante"));
        int relacionComida = Integer.parseInt(request.getParameter("RelacionComida"));
        int patronSueno = Integer.parseInt(request.getParameter("PatronSueno"));

        int respuestas[] = new int[4];

        respuestas[0] = estadoAnimo;
        respuestas[1] = situacionEstresante;
        respuestas[2] = relacionComida;
        respuestas[3] = patronSueno;

        encuestaCatego.setRespuestas(respuestas);

        encuestaCatego.conteoRespuestas();
        encuestaCatego.categorizarArea();

        Patient paciente = (Patient) request.getSession().getAttribute("currentPatient");
        int IDcurrentProfessional = 0;

        List<Professional> listaProfessionales = professionalController.getProfessionalsController();

        for (Professional profesional : listaProfessionales) {

            if (profesional.getSpeciality().equals(encuestaCatego.getCategoriaPaciente())) {
                IDcurrentProfessional = profesional.getId();
                trastornoController.crearTrastornoController(new Trastorno(paciente.getIdentificationNumber(), profesional.getIdentificationNumber(), encuestaCatego.getCategoriaPaciente(), profesional.getSpeciality(), encuestaCatego.getDescripcionTrastorno()));
            } else {
                response.sendRedirect("PatientMain.jsp");
            }
        }

        // EL PROGRAMA SE ESTA CONFUNDIENDO CON 2 DIFERENTES PROFESIONALES, 
        // CREAR UNA TABLA DONDE ESTAN TODOS LOS PROFESIONALES Y OTRA TABLA DONDE ESTAN SOLOS CON
        // LOS QUE HA TENIDO SESIONES
        HttpSession miSesion = request.getSession();

        Professional newCurrentProfessional = professionalController.getProfessionalByIdController(IDcurrentProfessional);

        miSesion.setAttribute("newCurrentProfessional", newCurrentProfessional);

        miSesion.setAttribute("encuestaCatego", encuestaCatego);

        response.sendRedirect("TrastornosDescription.jsp");

    }

    @Override
    public String getServletInfo() {
        return "Short description";

    }

}
