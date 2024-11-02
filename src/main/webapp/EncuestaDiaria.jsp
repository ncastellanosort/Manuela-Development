<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="SidebarPatient.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Encuesta diaria</title>
        <script src="https://cdn.tailwindcss.com"></script>
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

            .navbar-brand {
                color: white;
            }

            .survey-label {
                font-weight: bold;
                margin-top: 10px;
            }

            .div-submit {
                margin-bottom: 10px;
            }

            td {
                max-width: 150px; /* Define un ancho máximo para las celdas */
                white-space: nowrap; /* Evita que el texto se divida en varias líneas */
                overflow: hidden; /* Oculta el texto que no cabe en la celda */
                text-overflow: ellipsis; /* Muestra los puntos suspensivos */
            }
        </style>
    </head>

    <body class="bg-gray-100">
        <div class="p-4 sm:ml-64">
            <div class="container mx-auto mt-4">
                <h1 class="text-center text-3xl font-bold">Encuesta Del Dia</h1>
                <h2 class="text-center text-xl mt-2">24/09/2024</h2>

                <form action="SvEncuestaDiaria" method="POST">
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mt-4">
                        <div>
                            <label class="survey-label">1. ¿Cómo describirías tu estado de ánimo hoy?</label>
                            <select class="w-full mt-2 p-2 border rounded-md" aria-label="Pregunta 1" name="EstadoAnimo">
                                <option selected>--SELECCIONE UNA OPCION--</option>
                                <option value="Bueno">Bueno</option>
                                <option value="Neutro">Neutro</option>
                                <option value="Malo">Malo</option>
                            </select>
                        </div>
                        <div>
                            <label class="survey-label">2. ¿Qué nivel de energía tuviste durante el día?</label>
                            <select class="w-full mt-2 p-2 border rounded-md" aria-label="Pregunta 2" name="NivelEnergia">
                                <option selected>--SELECCIONE UNA OPCION--</option>      
                                <option value="Alta">Alta</option>
                                <option value="Normal">Normal</option>
                                <option value="Baja">Baja</option>    
                            </select>
                        </div>
                    </div>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mt-4">
                        <div>
                            <label class="survey-label">3. ¿Te sentiste estresado o ansioso hoy?</label>
                            <select class="w-full mt-2 p-2 border rounded-md" aria-label="Pregunta 3" name="EstresAnsiedad">
                                <option selected>--SELECCIONE UNA OPCION--</option>
                                <option value="Todo el dia">Todo el día</option>
                                <option value="A veces">A veces</option>
                                <option value="Nunca">Nunca</option>
                            </select>
                        </div>
                    </div>

                    <div class="text-center div-submit mt-6">
                        <button type="submit" class="bg-gray-800 text-white px-4 py-2 rounded-md hover:bg-gray-500">Submit</button>
                    </div>
                </form>

                <div class="text-center mt-4">
                    <form action="SvEncuestaDiaria" method="GET">
                        <button type="submit" class="bg-gray-800 text-white px-4 py-2 rounded-md hover:bg-gray-500">Ver Encuestas Realizadas</button>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
