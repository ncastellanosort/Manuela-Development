<%-- 
    Document   : Options
    Created on : Sep 29, 2024, 8:50:26 AM
    Author     : Nicolas
--%>

<%@page import="com.mycompany.hu.sprint1.Controllers.Controller"%>
<%@page import="com.mycompany.hu.sprint1.Controllers.PatientController"%>
<%@page import="com.mycompany.hu.sprint1.Controllers.ProfessionalController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="SidebarMainUser.jsp"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Inicio de Sesión</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <%
        Controller controller = new Controller();
    %>
    <body class="bg-gray-100 overflow-hidden">

        <div class="sm:ml-64 flex flex-col items-center min-h-screen">

            <div class="flex-grow text-center flex flex-col justify-center items-center">
                <h2 class="text-2xl font-semibold mb-4">Bienvenido, ¿Cómo quieres iniciar sesión?</h2>

                <div class="flex justify-center space-x-16">
                    <div class="flex flex-col items-center">
                        <div class="bg-gray-300 rounded-full p-6">
                            <svg class="h-24 w-24 text-gray-700" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                            <path fill-rule="evenodd" d="M12 4a4 4 0 1 0 0 8 4 4 0 0 0 0-8Zm-2 9a4 4 0 0 0-4 4v1a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2v-1a4 4 0 0 0-4-4h-4Z" clip-rule="evenodd"/>
                            </svg>

                        </div>
                        <button class="mt-4 px-4 py-2 bg-gray-300 text-gray-700 font-medium rounded-md hover:bg-gray-400">
                            <a href="LoginPatient.jsp">Paciente</a>
                        </button>
                    </div>

                    <div class="flex flex-col items-center">
                        <div class="bg-gray-300 rounded-full p-6">
                            <svg class="h-24 w-24 text-gray-700" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M11 21V2.352A3.451 3.451 0 0 0 9.5 2a3.5 3.5 0 0 0-3.261 2.238A3.5 3.5 0 0 0 4.04 8.015a3.518 3.518 0 0 0-.766 1.128c-.042.1-.064.209-.1.313a3.34 3.34 0 0 0-.106.344 3.463 3.463 0 0 0 .02 1.468A4.017 4.017 0 0 0 2.3 12.5l-.015.036a3.861 3.861 0 0 0-.216.779A3.968 3.968 0 0 0 2 14c.003.24.027.48.072.716a4 4 0 0 0 .235.832c.006.014.015.027.021.041a3.85 3.85 0 0 0 .417.727c.105.146.219.285.342.415.072.076.148.146.225.216.1.091.205.179.315.26.11.081.2.14.308.2.02.013.039.028.059.04v.053a3.506 3.506 0 0 0 3.03 3.469 3.426 3.426 0 0 0 4.154.577A.972.972 0 0 1 11 21Zm10.934-7.68a3.956 3.956 0 0 0-.215-.779l-.017-.038a4.016 4.016 0 0 0-.79-1.235 3.417 3.417 0 0 0 .017-1.468 3.387 3.387 0 0 0-.1-.333c-.034-.108-.057-.22-.1-.324a3.517 3.517 0 0 0-.766-1.128 3.5 3.5 0 0 0-2.202-3.777A3.5 3.5 0 0 0 14.5 2a3.451 3.451 0 0 0-1.5.352V21a.972.972 0 0 1-.184.546 3.426 3.426 0 0 0 4.154-.577A3.506 3.506 0 0 0 20 17.5v-.049c.02-.012.039-.027.059-.04.106-.064.208-.13.308-.2s.214-.169.315-.26c.077-.07.153-.14.225-.216a4.007 4.007 0 0 0 .459-.588c.115-.176.215-.361.3-.554.006-.014.015-.027.021-.041.087-.213.156-.434.205-.659.013-.057.024-.115.035-.173.046-.237.07-.478.073-.72a3.948 3.948 0 0 0-.066-.68Z"/>
                            </svg>
                        </div>
                        <button class="mt-4 px-4 py-2 bg-gray-300 text-gray-700 font-medium rounded-md hover:bg-gray-400">
                            <a href="LoginProfessional.jsp">Profesional</a>
                        </button>
                    </div>
                </div>
            </div>
        </div>


    </body>

</html>

