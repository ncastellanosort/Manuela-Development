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
            }

            .survey-label {
                font-weight: bold;
                margin-top: 10px;
            }

            .btn-custom {
                background-color: #7A7A7A; /* Tono de gris */
                color: white; /* Color del texto */
            }

            .btn-custom:hover{
                color: white;
                background-color: #9A9A9A;
            }

            .div-submit{
                margin-bottom: 10px;

            }

        </style>
    </head>

    <body>

        <div class="p-4 sm:ml-64">
            <div class="container mt-4">
                <h1 class="text-center">Programar Sesion</h1>
                <h2 class="text-center">Iniciar Sesion - Proceso</h2>


                <form action="SvEncuestaCategorizacion" method="POST">
                    <div class="row mt-4">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="survey-label">1. ¿Cómo te has sentido emocionalmente en las 
                                    últimas semanas?</label>
                                <select class="form-select" aria-label="Pregunta 1" name="EstadoAnimo">
                                    <option selected>SELECCIONE UNA OPCION</option>
                                    <option value="1">He tenido cambios drásticos en mi estado de ánimo, pasando de estar muy feliz a muy deprimido.</option>
                                    <option value="2">He sentido una preocupación constante por situaciones cotidianas.</option>
                                    <option value="3">He tenido una preocupación constante por mi peso y la comida.</option>
                                    <option value="4">He tenido problemas para conciliar el sueño o mantenerme dormido.</option>
                                    <option value="5">No he experimentado ninguna de estas sensaciones.</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="survey-label">2. ¿Cómo reaccionas ante situaciones estresantes?</label>
                                <select class="form-select" aria-label="Pregunta 2" name="SituacionEstresante">
                                    <option selected>SELECCIONE UNA OPCION</option>
                                    <option value="1">Me siento extremadamente triste y desesperanzado cuando enfrento estrés.</option>
                                    <option value="2">Tengo ataques de pánico o ansiedad intensa.</option>
                                    <option value="3">Tiendo a comer en exceso o evitar comer por completo. </option>
                                    <option value="4">Mi sueño se ve afectado y no puedo descansar bien.</option>
                                    <option value="5">No he experimentado ninguna de estas reacciones.</option> 
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row mt-4">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="survey-label">3. ¿Cómo describirías tu relación con la comida?</label>
                                <select class="form-select" aria-label="Pregunta 3" name="RelacionComida">
                                    <option selected>SELECCIONE UNA OPCION</option>
                                    <option value="1">Mi apetito cambia drásticamente dependiendo de mi estado de ánimo.</option>
                                    <option value="2">Como en exceso cuando estoy ansioso o estresado.</option>
                                    <option value="3">Me preocupa mucho mi peso y tiendo a evitar comer.</option>
                                    <option value="4">Mi patrón de sueño influye en mis hábitos alimenticios, como tarde o a deshoras.</option>
                                    <option value="5">No tengo problemas con la comida.</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="survey-label">4. ¿Cómo describirías tu patrón de sueño en el último mes?</label>
                                <select class="form-select" aria-label="Pregunta 4" name="PatronSueno">
                                    <option selected>SELECCIONE UNA OPCION</option>
                                    <option value="1">Me cuesta dormir debido a mi estado de ánimo deprimido.</option>
                                    <option value="2">Tengo insomnio debido a la preocupación constante.</option>
                                    <option value="3">Como poco o mucho antes de dormir debido a mis problemas alimenticios.</option>
                                    <option value="4">No tengo un patrón de sueño regular y duermo mal la mayor parte del tiempo.</option>
                                    <option value="5">Duermo bien y no tengo problemas con el sueño.</option> 
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="text-center div-submit">
                        <button type="submit" class="btn btn-custom">Submit</button>
                    </div>
                </form>

            </div>

        </div>
    </body>
</html>
