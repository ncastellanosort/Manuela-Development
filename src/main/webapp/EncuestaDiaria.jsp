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
                max-width: 150px;
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
            }
        </style>
    </head>

    <body class="bg-gray-100">
        <div class="p-4 sm:ml-64">
            <div class="container mx-auto mt-4">
                <div class="max-w-3xl mx-auto bg-white rounded-lg shadow-xl overflow-hidden">
                    <div class="bg-gray-700 px-6 py-4">
                        <h1 class="text-center text-3xl font-bold text-white">Encuesta Del Dia</h1>
                        <h2 class="text-center text-xl text-blue-100 mt-2">24/09/2024</h2>
                    </div>

                    <form action="SvEncuestaDiaria" method="POST" class="p-6 space-y-6">
                        <div class="space-y-6">
                            <div>
                                <label for="EstadoAnimo" class="block text-sm font-medium text-gray-700">1. ¿Cómo describirías tu estado de ánimo hoy?</label>
                                <select id="EstadoAnimo" name="EstadoAnimo" class="mt-1 block w-full pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm rounded-md">
                                    <option selected>--SELECCIONE UNA OPCION--</option>
                                    <option value="Bueno">Bueno</option>
                                    <option value="Neutro">Neutro</option>
                                    <option value="Malo">Malo</option>
                                </select>
                            </div>

                            <div>
                                <label for="NivelEnergia" class="block text-sm font-medium text-gray-700">2. ¿Qué nivel de energía tuviste durante el día?</label>
                                <select id="NivelEnergia" name="NivelEnergia" class="mt-1 block w-full pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm rounded-md">
                                    <option selected>--SELECCIONE UNA OPCION--</option>      
                                    <option value="Alta">Alta</option>
                                    <option value="Normal">Normal</option>
                                    <option value="Baja">Baja</option>    
                                </select>
                            </div>

                            <div>
                                <label for="EstresAnsiedad" class="block text-sm font-medium text-gray-700">3. ¿Te sentiste estresado o ansioso hoy?</label>
                                <select id="EstresAnsiedad" name="EstresAnsiedad" class="mt-1 block w-full pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm rounded-md">
                                    <option selected>--SELECCIONE UNA OPCION--</option>
                                    <option value="Todo el dia">Todo el día</option>
                                    <option value="A veces">A veces</option>
                                    <option value="Nunca">Nunca</option>
                                </select>
                            </div>
                        </div>

                        <div class="text-center mt-6">
                            <button type="submit" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md shadow-sm text-white bg-gray-700 hover:bg-gray-900">
                                Enviar
                            </button>
                        </div>
                    </form>

                    <div class="border-t border-gray-200 p-6">
                        <form action="SvEncuestaDiaria" method="GET" class="text-center">
                            <button type="submit" class="inline-flex items-center px-4 py-2 border border-gray-300 shadow-sm text-sm font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500">
                                Ver Encuestas Realizadas
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
