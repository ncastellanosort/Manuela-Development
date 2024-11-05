<%@page import="com.mycompany.hu.sprint1.Entities.EncuestaDiariaVO"%>
<%@include file="SidebarPatient.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado de la encuesta</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="bg-gray-100">
        <%
            EncuestaDiariaVO encuestaDiariaVO = (EncuestaDiariaVO) request.getSession().getAttribute("encuestaDiariaVO");
        %>

        <div class="sm:ml-64 p-4 flex justify-center">
            <div class="max-w-3xl mx-auto bg-white rounded-lg shadow-xl overflow-hidden">
                <div class="bg-gray-700 p-6 text-white text-center">
                    <h1 class="text-3xl font-bold">¡Encuesta realizada!</h1>
                    <h2 class="text-xl mt-2">30/09/2024</h2>
                </div>

                <div class="p-6">
                    <div class="flex flex-wrap justify-center gap-4 mb-6">
                        <div class="bg-gray-700 p-3 rounded-lg">
                            <h4 class="text-sm text-white font-medium">Estado de ánimo</h4>
                            <p class="text-lg font-bold text-white"><%=encuestaDiariaVO.getEstadoAnimo()%></p>
                        </div>
                        <div class="bg-gray-700 p-3 rounded-lg">
                            <h4 class="text-sm text-white font-medium">Nivel de energía</h4>
                            <p class="text-lg font-bold text-white"><%=encuestaDiariaVO.getNivelEnergia()%></p>
                        </div>
                        <div class="bg-gray-700 p-3 rounded-lg">
                            <h4 class="text-sm text-white font-medium">Estrés/ansiedad</h4>
                            <p class="text-lg font-bold text-white"><%=encuestaDiariaVO.getEstresAnsiedad()%></p>
                        </div>
                    </div>

                    <div class="grid md:grid-cols-2 gap-6">
                        <div class="bg-gray-50 p-4 rounded-lg">
                            <h2 class="text-xl font-semibold mb-2 text-gray-800">Balance general</h2>
                            <p class="text-gray-600"><%=encuestaDiariaVO.getBalanceGeneral()%></p>
                        </div>
                        <div class="bg-gray-50 p-4 rounded-lg">
                            <h2 class="text-xl font-semibold mb-2 text-gray-800">Recomendación</h2>
                            <p class="text-gray-600"><%=encuestaDiariaVO.getRecomendacion()%></p>
                        </div>
                    </div>

                    <div class="mt-8 text-center">
                        <form action="SvEncuestaDiaria" method="GET">
                            <button type="submit" class="bg-gray-700 text-white py-2 px-6 rounded-lg hover:bg-gray-900">
                                Ver Encuestas Realizadas
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
