<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="SidebarPatient.jsp"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Programar Sesion</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <style>
            .btn-custom {
                background-color: #7A7A7A;
                color: white;
            }
            .btn-custom:hover {
                color: white;
                background-color: #9A9A9A;
            }
        </style>
    </head>

    <body class="bg-gray-100">
        <div class="p-4 sm:ml-64">
            <div class="container mx-auto mt-8 max-w-4xl">
                <div class="bg-white shadow-xl rounded-lg overflow-hidden">
                    <div class="bg-gray-700 p-6 text-white">
                        <h1 class="text-center text-3xl font-bold">Programar Sesión</h1>
                        <h2 class="text-center text-xl font-medium mt-2">Iniciar Sesión - Proceso</h2>
                    </div>

                    <form action="SvEncuestaCategorizacion" method="POST" class="p-6 space-y-6">
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div>
                                <label for="EstadoAnimo" class="block text-sm font-medium text-gray-700 mb-2">1. 
                                    ¿Cómo te has sentido últimamente?</label>
                                <select id="EstadoAnimo" name="EstadoAnimo" class="mt-1 block w-full pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm rounded-md">
                                    <option selected>SELECCIONE UNA OPCIÓN</option>
                                    <option value="1">He tenido cambios drásticos en mi estado de ánimo, pasando de estar muy feliz a muy deprimido.</option>
                                    <option value="2">He sentido una preocupación constante por situaciones cotidianas.</option>
                                    <option value="3">He tenido una preocupación constante por mi peso y la comida.</option>
                                    <option value="4">He tenido problemas para conciliar el sueño o mantenerme dormido.</option>
                                    <option value="5">No he experimentado ninguna de estas sensaciones.</option>
                                </select>
                            </div>
                            <div>
                                <label for="SituacionEstresante" class="block text-sm font-medium text-gray-700 mb-2">2. ¿Cómo reaccionas ante situaciones estresantes?</label>
                                <select id="SituacionEstresante" name="SituacionEstresante" class="mt-1 block w-full pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm rounded-md">
                                    <option selected>SELECCIONE UNA OPCIÓN</option>
                                    <option value="1">Me siento extremadamente triste y desesperanzado cuando enfrento estrés.</option>
                                    <option value="2">Tengo ataques de pánico o ansiedad intensa.</option>
                                    <option value="3">Tiendo a comer en exceso o evitar comer por completo.</option>
                                    <option value="4">Mi sueño se ve afectado y no puedo descansar bien.</option>
                                    <option value="5">No he experimentado ninguna de estas reacciones.</option>
                                </select>
                            </div>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div>
                                <label for="RelacionComida" class="block text-sm font-medium text-gray-700 mb-2">3. ¿Cómo describirías tu relación con la comida?</label>
                                <select id="RelacionComida" name="RelacionComida" class="mt-1 block w-full pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm rounded-md">
                                    <option selected>SELECCIONE UNA OPCIÓN</option>
                                    <option value="1">Mi apetito cambia drásticamente dependiendo de mi estado de ánimo.</option>
                                    <option value="2">Como en exceso cuando estoy ansioso o estresado.</option>
                                    <option value="3">Me preocupa mucho mi peso y tiendo a evitar comer.</option>
                                    <option value="4">Mi patrón de sueño influye en mis hábitos alimenticios, como tarde o a deshoras.</option>
                                    <option value="5">No tengo problemas con la comida.</option>
                                </select>
                            </div>
                            <div>
                                <label for="PatronSueno" class="block text-sm font-medium text-gray-700 mb-2">4. ¿Cómo describirías tu patrón de sueño en el último mes?</label>
                                <select id="PatronSueno" name="PatronSueno" class="mt-1 block w-full pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm rounded-md">
                                    <option selected>SELECCIONE UNA OPCIÓN</option>
                                    <option value="1">Me cuesta dormir debido a mi estado de ánimo deprimido.</option>
                                    <option value="2">Tengo insomnio debido a la preocupación constante.</option>
                                    <option value="3">Como poco o mucho antes de dormir debido a mis problemas alimenticios.</option>
                                    <option value="4">No tengo un patrón de sueño regular y duermo mal la mayor parte del tiempo.</option>
                                    <option value="5">Duermo bien y no tengo problemas con el sueño.</option>
                                </select>
                            </div>
                        </div>

                        <div class="text-center mt-6">
                            <button type="submit" class="bg-gray-700 text-white py-2 px-6 rounded-lg hover:bg-gray-900">
                                Enviar
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
