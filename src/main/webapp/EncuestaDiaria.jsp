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

            .navbar-brand {
                color: white;
            }

            .survey-label {
                font-weight: bold;
                margin-top: 10px;
            }

            .btn-custom {
                background-color: rgb(55 65 81); /* Tono de gris */
                color: white; /* Color del texto */
            }

            .btn-custom:hover{
                color: white;
                background-color: #9A9A9A;
            }

            .div-submit{
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

    <body>
        <div class="p-4 sm:ml-64">
            <div class="container mt-4">
                <h1 class="text-center">Encuesta Del Dia</h1>
                <h2 class="text-center">24/09/2024</h2>


                <form action="SvEncuestaDiaria" method="POST">
                    <div class="row mt-4">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="survey-label">1. ¿Cómo describirías tu estado de ánimo hoy?</label>
                                <select class="form-select" aria-label="Pregunta 1" name="EstadoAnimo">
                                    <option selected>--SELECCIONE UNA OPCION--</option>
                                    <option value="Bueno">Bueno</option>
                                    <option value="Neutro">Neutro</option>
                                    <option value="Malo">Malo</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="survey-label">2. ¿Qué nivel de energía tuviste durante el día?</label>
                                <select class="form-select" aria-label="Pregunta 2" name="NivelEnergia">
                                    <option selected>--SELECCIONE UNA OPCION--</option>      
                                    <option value="Alta">Alta</option>
                                    <option value="Normal">Normal</option>
                                    <option value="Baja">Baja</option>    
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="survey-label">3. ¿Te sentiste estresado o ansioso hoy?</label>
                                <select class="form-select" aria-label="Pregunta 3" name="EstresAnsiedad">
                                    <option selected>--SELECCIONE UNA OPCION--</option>
                                    <option value="Todo el dia">Todo el dia</option>
                                    <option value="A veces">A veces</option>
                                    <option value="Nunca">Nunca</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="text-center div-submit">
                        <button type="submit" class="btn btn-custom">Submit</button>
                    </div>
                </form>

                <div class="text-center">
                    <form action="SvEncuestaDiaria" method="GET">
                        <button type="submit" class="btn btn-custom">Ver Encuestas Realizadas</button>
                    </form>

                </div>
            </div>
        </div>

    </body>
</html>
