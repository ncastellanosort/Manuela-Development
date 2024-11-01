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
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <style>
            .navbar-custom {
                background-color: rgb(55 65 81); /* Un tono de gris */
                display: flex;
                justify-content: center; /* Centra horizontalmente */
                align-items: center; /* Centra verticalmente */
            }

            .navbar-custom .navbar-brand {
                color: white;
                font-size: 24px;
                margin: 0; /* Remueve el margen para asegurar que esté centrado */
            }

            .center-page {
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 25vh;
            }

            /* Estilos para la columna Balance General */
            td.texto-largo {
                max-width: 150px; /* Define un ancho máximo */
                white-space: nowrap; /* Evita saltos de línea */
                overflow: hidden; /* Oculta el texto desbordante */
                text-overflow: ellipsis; /* Muestra los puntos suspensivos */
            }
        </style>
    </head>

    <body>

        <div class="p-4 sm:ml-64">

            <!-- Div para centrar la tabla -->
            <div class="container center-page">
                <table class="table table-hover text-center">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Estado Animo</th>
                            <th scope="col">Nivel Energia</th>
                            <th scope="col">Estres/Ansiedad</th>
                            <th scope="col">Balance General</th>
                            <th scope="col">Recomendacion</th>
                        </tr>
                    </thead>
                    <tbody>

                        <%

                            int cont = 1;
                            EncuestaDiariaController encuestaDiariaController = new EncuestaDiariaController();
                            List<EncuestaDiariaVO> encuestas = (List) encuestaDiariaController.getEncuestasDiariasController();
                            for (EncuestaDiariaVO encuesta : encuestas) {
                                System.out.println(encuesta.getEstadoAnimo() + " , " + encuesta.getEstresAnsiedad());


                        %>
                        <tr>
                            <th scope="row"><%=cont%></th>
                            <td><%=encuesta.getEstadoAnimo()%></td>
                            <td><%=encuesta.getNivelEnergia()%></td>
                            <td><%=encuesta.getEstresAnsiedad()%></td>
                            <td class="texto-largo"><%=encuesta.getBalanceGeneral()%></td>
                            <td class="texto-largo"><%=encuesta.getRecomendacion()%></td>
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

