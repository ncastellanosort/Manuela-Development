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

        <div class="p-4 sm:ml-64 flex justify-center items-center">
            <%
                Professional professional = (Professional) request.getSession().getAttribute("actualProfessional");
            %>
            <div class="bg-white rounded-2xl shadow-xl overflow-hidden">
                <div class="md:flex">
                    <div class="md:w-1/3 bg-gray-700 p-8 text-center">
                        <div class="h-12 w-12 rounded-full bg-gray-300 mb-8 flex items-center justify-center mx-auto overflow-hidden">
                            <svg class="h-8 w-8 text-gray-500" fill="currentColor" viewBox="0 0 20 20">
                            <path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd" />
                            </svg>
                        </div>
                        <h1 class="text-2xl font-bold text-white mb-2"><%= professional.getName()%></h1>
                        <p class="text-blue-200 text-lg"><%= professional.getSpeciality()%></p>
                    </div>

                    <div class="md:w-2/3 p-8">
                        <h2 class="text-3xl font-semibold mb-6 text-gray-800">Califica a tu profesional</h2>

                        <form action="SvCalificarProfesional" method="POST" class="space-y-6">
                            <div>
                                <label for="nota" class="block text-gray-700 font-medium mb-2">Deja una nota para la calificación del profesional</label>
                                <textarea class="w-full p-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500" id="nota" name="nota" rows="4" placeholder="Ingresa tu opinión sobre el profesional..."></textarea>
                            </div>
                            <div>
                                <label for="puntuacion" class="block text-gray-700 font-medium mb-2">Dale una puntuación de 1 a 5</label>
                                <div class="flex items-center space-x-2">
                                    <input type="range" class="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointer" id="puntuacion" name="puntuacion" min="1" max="5" value="3">
                                    <span id="puntuacionValue" class="text-2xl font-bold text-gray-700">3</span>
                                </div>
                            </div>
                            <button type="submit" class="w-full bg-gray-700 text-white py-3 px-6 rounded-lg text-lg font-semibold hover:bg-blue-700 transition duration-300 ease-in-out focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50">
                                Enviar Calificación
                            </button>
                        </form>

                        <%
                            String nota = request.getParameter("nota");
                            String puntuacion = request.getParameter("puntuacion");

                            if (nota != null && puntuacion != null) {
                        %>
                        <div class="mt-6 p-4 bg-green-100 border border-green-400 rounded-lg text-green-700">
                            <p class="font-semibold">¡Calificación realizada con éxito!</p>
                            <p>Puntuación: <%= puntuacion%></p>
                            <p>Nota: <%= nota%></p>
                        </div>
                        <%
                            }
                        %>
                    </div>
                </div>
            </div>

            <script>
                const puntuacionInput = document.getElementById('puntuacion');
                const puntuacionValue = document.getElementById('puntuacionValue');

                puntuacionInput.addEventListener('input', function () {
                    puntuacionValue.textContent = this.value;
                });
            </script>
        </div>

    </body>
</html>
