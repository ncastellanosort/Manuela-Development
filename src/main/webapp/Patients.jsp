<%-- 
    Document   : Patients
    Created on : Nov 9, 2024, 5:03:54 PM
    Author     : Nicolas
--%>

<%@page import="com.mycompany.hu.sprint1.Tools.Tools"%>
<%@page import="com.mycompany.hu.sprint1.Tools.ActivePatient"%>
<%@page import="com.mycompany.hu.sprint1.Entities.Patient"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.hu.sprint1.Entities.Professional"%>
<%@include file="SidebarProfessional.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pacientes</title>

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
				    Residencia 
                                </th>
				<th scope="col" class="px-6 py-3">
				    Trastorno 
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
				    Professional currentP = (Professional) request.getSession().getAttribute("currentProfessional");
				    Tools tool = new Tools();

				    List<Patient> pacientesActivos = ActivePatient.obtenerPacientesActivos(currentP);

				    for (Patient patient : pacientesActivos) {
					    String tr = tool.getTrastorno(patient);


                            %>

                            <tr class="odd:bg-white even:bg-gray-50 border-b ">
                                <th scope="row" class="px-6 py-4">
                                    <%=patient.getName()%>
                                </th>
                                <td class="px-6 py-4">
                                    <%=patient.getLastname()%>
                                </td>
                                <td class="px-6 py-4">
                                    <%=patient.getTown()%>
                                </td>
				<td class="px-6 py-4">
                                    <%=tr%>
                                </td>
                                <td class="px-6 py-4">
                                    <%=patient.getEmail()%>
                                </td>
                                <td class="px-6 py-4">
                                    <%=patient.getPhoneNumber()%>
                                </td>
                                <td class="px-6 py-4">
                                    <a href="SvViewPatient?id=<%=patient.getIdentificationNumber()%>" class="font-medium text-orange-500 hover:text-orange-500 hover:underline">Ver</a>
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
