<%@page import="java.util.List"%>
<%@page import="com.mycompany.hu.sprint1.Controllers.EncuestaDiariaController"%>
<%@page import="com.mycompany.hu.sprint1.Entities.EncuestaDiariaVO"%>
<%@page import="com.mycompany.hu.sprint1.Controllers.ControladoraLogica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="SidebarPatient.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Encuestas Diarias</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <style>
            .navbar-custom {
                background-color: rgb(55 65 81);
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .navbar-custom .navbar-brand {
                color: white;
                font-size: 24px;
                margin: 0;
            }

            td.texto-largo {
                max-width: 150px;
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
            }
        </style>
    </head>

    <body>
        <div class="p-4 sm:ml-64">
            <!-- Div para centrar la tabla -->
            <div class="flex justify-center items-center mt-[25vh]">
                <table class="min-w-full border border-gray-300 divide-y divide-gray-200 text-center">
                    <thead class="bg-gray-100">
                        <tr>
                            <th class="px-6 py-3 text-xs font-medium text-gray-500 uppercase tracking-wider">#</th>
                            <th class="px-6 py-3 text-xs font-medium text-gray-500 uppercase tracking-wider">Estado Ánimo</th>
                            <th class="px-6 py-3 text-xs font-medium text-gray-500 uppercase tracking-wider">Nivel Energía</th>
                            <th class="px-6 py-3 text-xs font-medium text-gray-500 uppercase tracking-wider">Estrés/Ansiedad</th>
                            <th class="px-6 py-3 text-xs font-medium text-gray-500 uppercase tracking-wider">Balance General</th>
                            <th class="px-6 py-3 text-xs font-medium text-gray-500 uppercase tracking-wider">Recomendación</th>
                        </tr>
                    </thead>
                    <tbody class="bg-white divide-y divide-gray-200">
                        <%
                            int cont = 1;
                            EncuestaDiariaController encuestaDiariaController = new EncuestaDiariaController();
                            List<EncuestaDiariaVO> encuestas = (List) encuestaDiariaController.getEncuestasDiariasController();
                            for (EncuestaDiariaVO encuesta : encuestas) {
                        %>
                        <tr>
                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900"><%=cont%></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900"><%=encuesta.getEstadoAnimo()%></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900"><%=encuesta.getNivelEnergia()%></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900"><%=encuesta.getEstresAnsiedad()%></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900 texto-largo"><%=encuesta.getBalanceGeneral()%></td>
                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900 texto-largo"><%=encuesta.getRecomendacion()%></td>
                        </tr>
                        <%
                                cont++;
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
