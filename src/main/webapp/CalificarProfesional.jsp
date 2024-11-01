<%-- 
    Document   : Calificar
    Created on : Sep 28, 2024, 7:10:22 PM
    Author     : juanm
--%>

<%@page import="com.mycompany.hu.sprint1.Entities.Professional"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="SidebarPatient.jsp"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Calificar Profesional</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <style>
            .navbar-custom {
                background-color: #2e3a49; /* Color gris oscuro */
                color: white;
                display: flex;
                justify-content: center; /* Centra horizontalmente */
                align-items: center; /* Centra verticalmente */
                height: 60px; /* Ajusta la altura de la barra */
            }
            .navbar-custom .navbar-brand {
                color: white;
                font-size: 24px;
                margin: 0; /* Remueve el margen para asegurar que esté centrado */
            }
            body {
                background-color: #f8f9fa;
            }
            .container {
                margin-top: 50px;
            }
            .profile-section {
                background-color: #e9ecef;
                padding: 30px;
                border-radius: 10px;
            }
            .profile-img {
                font-size: 80px;
                color: gray;
            }
            .form-group textarea {
                resize: none;
            }
        </style>
    </head>
    <body>
        <div class="p-4 sm:ml-64">


            <%

                Professional professional = (Professional) request.getSession().getAttribute("actualProfessional");

            %>
            <div class="container">
                <div class="profile-section text-center">
                    <h2>Tu profesional asignado es</h2>
                    <h1><%= professional.getName()%></h1>
                    <p><strong><%= professional.getSpeciality()%></strong></p>
                    <div class="profile-img mb-3">
                        <img src="${pageContext.request.contextPath}/imagenes/Icon_Calificar.png" alt="Icono de Calificación" style="width: 150px; height: 150px;">
                    </div>

                    <form action="SvCalificarProfesional" method="POST">
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="nota" class="form-label">Deja una nota para la calificación del profesional</label>
                                <textarea class="form-control" id="nota" name="nota" rows="4" placeholder="Ingresa la nota..."></textarea>
                            </div>
                            <div class="col-md-6">
                                <label for="puntuacion" class="form-label">Dale una puntuación de 1 a 5</label>
                                <input type="number" class="form-control" id="puntuacion" name="puntuacion" min="1" max="5" value="3">
                            </div>
                        </div>

                        <button type="submit" class="btn btn-primary">Calificar</button>
                    </form>

                    <%                    // Código del lado del servidor para manejar la calificación
                        String nota = request.getParameter("nota");
                        String puntuacion = request.getParameter("puntuacion");

                        if (nota != null && puntuacion != null) {
                            // Lógica para guardar la nota y puntuación
%>
                    <div class="alert alert-success mt-3" role="alert">
                        ¡Calificación realizada con éxito! <br>
                        Puntuación: <%= puntuacion%> <br>
                        Nota: <%= nota%>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
