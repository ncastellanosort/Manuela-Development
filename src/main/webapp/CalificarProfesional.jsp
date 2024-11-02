<%-- 
    Document   : Calificar
    Created on : Sep 28, 2024, 7:10:22 PM
    Author     : juanm
--%>

<%@page import="com.mycompany.hu.sprint1.Entities.Professional"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="SidebarPatient.jsp"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Calificar Profesional</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="bg-gray-100 overflow-hidden">

        <div class="p-4 sm:ml-64">
            <% 
                Professional professional = (Professional) request.getSession().getAttribute("actualProfessional");
            %>
            <div class="container mx-auto">
                <div class="bg-gray-200 p-8 rounded-lg text-center shadow-lg">
                    <h2 class="text-2xl font-semibold mb-4">Tu profesional asignado es</h2>
                    <h1 class="text-3xl font-bold"><%= professional.getName()%></h1>
                    <p class="text-xl font-medium text-gray-700"><%= professional.getSpeciality()%></p>
                    <div class="flex justify-center mt-6 mb-8">
                        <img src="${pageContext.request.contextPath}/imagenes/Icon_Calificar.png" alt="Icono de Calificación" class="w-36 h-36">
                    </div>

                    <form action="SvCalificarProfesional" method="POST" class="space-y-6">
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div>
                                <label for="nota" class="block text-left text-gray-700 font-semibold mb-2">Deja una nota para la calificación del profesional</label>
                                <textarea class="w-full p-3 border border-gray-300 rounded-lg focus:outline-none focus:ring focus:ring-indigo-200" id="nota" name="nota" rows="4" placeholder="Ingresa la nota..."></textarea>
                            </div>
                            <div>
                                <label for="puntuacion" class="block text-left text-gray-700 font-semibold mb-2">Dale una puntuación de 1 a 5</label>
                                <input type="number" class="w-full p-3 border border-gray-300 rounded-lg focus:outline-none focus:ring focus:ring-indigo-200" id="puntuacion" name="puntuacion" min="1" max="5" value="3">
                            </div>
                        </div>

                        <button type="submit" class="mt-4 bg-blue-600 text-white py-2 px-6 rounded-lg hover:bg-blue-700 focus:outline-none">Calificar</button>
                    </form>

                    <%
                        String nota = request.getParameter("nota");
                        String puntuacion = request.getParameter("puntuacion");

                        if (nota != null && puntuacion != null) {
                    %>
                    <div class="mt-6 p-4 bg-green-100 border border-green-400 rounded-lg text-green-700">
                        ¡Calificación realizada con éxito! <br>
                        Puntuación: <%= puntuacion %> <br>
                        Nota: <%= nota %>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>

    </body>
</html>
