<%-- 
    Document   : Professionals
    Created on : Sep 29, 2024, 6:42:24 PM
    Author     : Nicolas
--%>

<%@page import="java.util.HashSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.hu.sprint1.Entities.Patient"%>
<%@page import="com.mycompany.hu.sprint1.Entities.Trastorno"%>
<%@page import="com.mycompany.hu.sprint1.Controllers.TrastornoController"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.hu.sprint1.Entities.Professional"%>
<%@page import="com.mycompany.hu.sprint1.Entities.Professional"%>
<%@page import="com.mycompany.hu.sprint1.Controllers.ProfessionalController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="SidebarPatient.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profesionales</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body>


        <div class="p-4 sm:ml-64">
            <div class="mx-auto max-w-screen-xl flex flex-wrap justify-center">
                <div class="relative overflow-x-auto sm:rounded-lg border border-gray-200">
                    <table class="w-full text-sm text-left rtl:text-right text-gray-500 ">
                        <thead class="text-xs text-gray-700 uppercase bg-gray-100 ">
                            <tr>
                                <th scope="col" class="px-6 py-3">
                                    Nombre
                                </th>
                                <th scope="col" class="px-6 py-3">
                                    Apellidos
                                </th>
                                <th scope="col" class="px-6 py-3">
                                    Especialidad
                                </th>
                                <th scope="col" class="px-6 py-3">
                                    Email
                                </th>
                                <th scope="col" class="px-6 py-3">
                                    Telefono
                                </th>
                                <th scope="col" class="px-6 py-3">
                                    Ver
                                </th>
                            </tr>
                        </thead>
                        <tbody>

                            <%
                                ProfessionalController professionalController = new ProfessionalController();
                                Patient currentP = (Patient) request.getSession().getAttribute("currentPatient");

                                TrastornoController trastornoController = new TrastornoController();
                                List<Trastorno> trastornos = trastornoController.getTrastornosController();

                                HashSet<Integer> idsNoRepetidos = new HashSet<>();

                                ArrayList<Professional> profesionalesActivos = new ArrayList<>();

                                for (Trastorno trastorno : trastornos) {

                                    if (trastorno.getPatient_id().equals(currentP.getIdentificationNumber())) {

                                        idsNoRepetidos.add(Integer.parseInt(trastorno.getProfessional_id()));

                                    }
                                }

                                for (Integer id : idsNoRepetidos) {
                                    Professional p = professionalController.getProfessionalCedula(String.valueOf(id));
                                    profesionalesActivos.add(p);
                                }

                                for (Professional p : profesionalesActivos) {
                                    System.out.println(p.getName());


                            %>

                            <tr class="odd:bg-white even:bg-gray-50 border-b ">
                                <th scope="row" class="px-6 py-4">
                                    <%=p.getName()%>
                                </th>
                                <td class="px-6 py-4">
                                    <%=p.getLastname()%>
                                </td>
                                <td class="px-6 py-4">
                                    <%=p.getSpeciality()%>
                                </td>
                                <td class="px-6 py-4">
                                    <%=p.getEmail()%>
                                </td>
                                <td class="px-6 py-4">
                                    <%=p.getPhoneNumber()%>
                                </td>
                                <td class="px-6 py-4">
                                    <a href="SvViewProfessional?id=<%=p.getId()%>" class="font-medium text-orange-500 hover:text-orange-500 hover:underline">Ver</a>
                                </td>
                            </tr>
                            <%                                }%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </body>
</html>
