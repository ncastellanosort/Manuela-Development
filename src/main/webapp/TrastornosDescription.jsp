<%-- 
    Document   : TrastornosDescription
    Created on : Nov 1, 2024, 10:03:34 AM
    Author     : Nicolas
--%>

<%@page import="com.mycompany.hu.sprint1.Entities.EncuestaCategorizacionVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="SidebarPatient.jsp"%>  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trastornos</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body>
        <%
            EncuestaCategorizacionVO encuestaCate = (EncuestaCategorizacionVO) request.getSession().getAttribute("encuestaCatego");
        %>

        <div class="p-4 sm:ml-64">
            <section class="bg-white dark:bg-gray-900">
                <div class="py-8 px-4 mx-auto max-w-screen-xl text-center lg:py-16">
                    <h1 class="mb-4 text-4xl font-extrabold tracking-tight leading-none text-gray-900 md:text-5xl lg:text-6xl dark:text-white"><%=encuestaCate.getCategoriaPaciente()%></h1>
                    <p class="mb-8 text-lg font-normal text-gray-500 lg:text-xl sm:px-16 lg:px-48 dark:text-gray-400"><%=encuestaCate.getDescripcionTrastorno()%></p> 
                    <div class="flex flex-col space-y-4 sm:flex-row sm:justify-center sm:space-y-0">
                        <a href="ContactProfessional.jsp" class="inline-flex justify-center items-center py-3 px-5 text-base font-medium text-center text-white rounded-lg bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 dark:focus:ring-blue-900">
                            Siguiente
                            <svg class="w-3.5 h-3.5 ms-2 rtl:rotate-180" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9"/>
                            </svg>
                        </a>
                    </div>
                </div>
            </section>        
        </div>

    </body>
</html>
