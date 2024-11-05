<%-- 
    Document   : ContactProfessional
    Created on : Sep 29, 2024, 9:47:55 AM
    Author     : Nicolas
--%>

<%@page import="com.mycompany.hu.sprint1.Entities.Patient"%>
<%@page import="com.mycompany.hu.sprint1.Entities.Professional"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="SidebarPatient.jsp"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Asignación de Profesional</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <%

            Professional professional = (Professional) request.getSession().getAttribute("newCurrentProfessional");
            Patient patient = (Patient) request.getSession().getAttribute("currentPatient");

        %>
    </head>
    <body class="bg-gray-100">

        <div class="p-4 sm:ml-64">

            <div class="max-w-lg mx-auto mt-10 bg-white rounded-lg shadow-lg">
                <div class="text-center p-6">
                    <p class="text-2xl font-bold"><%= professional.getName()%></p>
                    <p class="text-gray-600"><%= professional.getSpeciality()%></p>

                    <div class="mt-6">
                        <textarea id="whatsappMessage" placeholder="Escribe tu mensaje aquí"  class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500" rows="4" >Hola <%= professional.getName()%>, mi nombre es <%= patient.getName()%> </textarea>
                    </div>

                    <div class="mt-6">
                        <a href="#" id="contactWhatsApp" target="_blank" rel="noopener noreferrer" class="inline-flex items-center px-4 py-2 bg-green-500 text-white font-semibold rounded-lg shadow hover:bg-green-600">
                            Contactar vía WhatsApp
                        </a>
                    </div>

                    <div class="mt-4">
                        <button class="px-4 py-2 bg-gray-700 text-white rounded-lg hover:bg-gray-500">
                            <a href="Professionals.jsp">Volver</a>                      
                        </button>
                    </div>
                </div>
            </div>
        </div>


        <script>
            document.getElementById('contactWhatsApp').addEventListener('click', function () {
                var message = document.getElementById('whatsappMessage').value;
                var url = "https://wa.me/+57<%= professional.getPhoneNumber()%>?text=" + encodeURIComponent(message);
                this.href = url;

            });
        </script>



    </body>
</html>
