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
            <div class="container mx-auto mt-12">
                <div class="bg-gray-200 p-8 rounded-lg text-center shadow-lg">
                    <h2 class="text-2xl font-bold mb-4"><%= professional.getName()%></h2>
                    <div class="flex justify-center mb-4">
                        <img src="${pageContext.request.contextPath}/imagenes/Icon_Calificar.png" alt="Icono de Calificación" class="w-36 h-36 object-cover rounded-full">
                    </div>
                    <div class="text-lg font-semibold mb-6">Especialización: <%= professional.getSpeciality()%></div>

                    <div class="flex flex-col md:flex-row justify-between gap-8">
                        <div class="text-left md:w-1/2">
                            <p class="text-xl font-semibold mb-2">Descripción</p>
                            <p class="text-gray-700"><%= professional.getDescription()%></p>
                        </div>
                        <div class="text-left md:w-1/2">
                            <p class="text-xl font-semibold mb-2">Información de contacto</p>
                            <p class="text-gray-700 font-medium">Correo Electrónico: <%= professional.getEmail()%></p>
                            <p class="text-gray-700 font-medium">WhatsApp: <%= professional.getPhoneNumber()%></p>
                            <a href="ContactProfessional.jsp" class="inline-block mt-4 bg-green-600 text-white py-2 px-4 rounded hover:bg-green-700">Contactar</a>
                        </div>
                    </div>

                    <div class="mt-6">
                        <a href="CalificarProfesional.jsp" class="inline-block bg-gray-800 text-white py-2 px-4 rounded hover:bg-gray-900">Calificar</a>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
