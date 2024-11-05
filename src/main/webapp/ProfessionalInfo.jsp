<%@page import="com.mycompany.hu.sprint1.Entities.Professional"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="SidebarPatient.jsp"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Contactar profesional</title>
        <% Professional professional = (Professional) request.getSession().getAttribute("actualProfessional");%>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>

    <body class="bg-gray-100">
        <div class="p-4 sm:ml-64">
            <div class="max-w-3xl mx-auto bg-white rounded-lg shadow-xl overflow-hidden">
                <div class="text-center p-6 sm:p-8">
                    <div class="w-32 h-32 mx-auto mb-4 rounded-full overflow-hidden bg-gray-200 flex items-center justify-center mx-auto overflow-hidden">
                        <svg class="h-8 w-8 text-gray-500" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd" />
                        </svg>
                    </div>
                    <h2 class="text-3xl font-bold text-gray-800"><%= professional.getName()%></h2>
                    <p class="text-xl text-gray-600 mt-2"><%= professional.getSpeciality()%></p>
                </div>
                <div class="px-6 sm:px-8 pb-6 sm:pb-8 space-y-6">
                    <div class="grid md:grid-cols-2 gap-8">
                        <div>
                            <h3 class="text-xl font-semibold mb-2 text-gray-800">Descripcion</h3>
                            <p class="text-gray-600"><%= professional.getDescription()%></p>
                        </div>
                        <div>
                            <h3 class="text-xl font-semibold mb-2 text-gray-800">Informacion de contacto</h3>
                            <div class="space-y-2">
                                <div class="flex items-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-2 text-gray-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                                    </svg>
                                    <span class="text-gray-600"><%= professional.getEmail()%></span>
                                </div>
                                <div class="flex items-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-2 text-gray-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                                    </svg>
                                    <span class="text-gray-600"><%= professional.getPhoneNumber()%></span>
                                </div>
                            </div>
                            <a href="ContactProfessional.jsp" class="mt-4 block w-full bg-green-600 text-white py-2 px-4 rounded hover:bg-green-700 transition duration-300 text-center">Contactar</a>
                        </div>
                    </div>
                </div>
                <div class="border-t border-gray-200 px-6 sm:px-8 py-4 text-center">
                    <a href="CalificarProfesional.jsp" class="inline-block bg-gray-800 text-white py-2 px-4 rounded hover:bg-gray-900 transition duration-300">Calificar</a>
                </div>
            </div>
        </div>
    </body>
</html>
