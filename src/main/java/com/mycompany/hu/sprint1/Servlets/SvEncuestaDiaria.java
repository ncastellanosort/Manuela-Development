package com.mycompany.hu.sprint1.Servlets;

import com.mycompany.hu.sprint1.Controllers.ControladoraLogica;
import com.mycompany.hu.sprint1.Controllers.EncuestaDiariaController;
import com.mycompany.hu.sprint1.Entities.EncuestaDiariaVO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "SvEncuestaDiaria", urlPatterns = {"/SvEncuestaDiaria"})
public class SvEncuestaDiaria extends HttpServlet {

    EncuestaDiariaController encuestaDiariaController = new EncuestaDiariaController();

    ControladoraLogica controlLog = new ControladoraLogica();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        HttpSession miSesion = request.getSession();
        miSesion.setAttribute("controlLog", controlLog);
        response.sendRedirect("HistorialEncuestaDiaria.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        EncuestaDiariaVO encuestaDiariaVO = new EncuestaDiariaVO();

        String estadoAnimo = request.getParameter("EstadoAnimo");
        String nivelEnergia = request.getParameter("NivelEnergia");
        String estresAnsiedad = request.getParameter("EstresAnsiedad");

        encuestaDiariaVO.setEstadoAnimo(estadoAnimo);
        encuestaDiariaVO.setNivelEnergia(nivelEnergia);
        encuestaDiariaVO.setEstresAnsiedad(estresAnsiedad);

        encuestaDiariaVO.combinatoriaRespuestas();

        encuestaDiariaController.crearEncuestaDiariaController(encuestaDiariaVO);
        // controlLog.registrarEncuestaDiaria(encuestaDiariaVO);

        HttpSession miSesion = request.getSession();
        miSesion.setAttribute("encuestaDiariaVO", encuestaDiariaVO);
        response.sendRedirect("BalanceGeneral.jsp");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
