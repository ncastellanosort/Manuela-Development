<%-- 
    Document   : contactar
    Created on : Sep 29, 2024, 4:05:01 PM
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
        <title>CONTACTAR PROFESIONAL</title>
        <%

            Professional professional = (Professional) request.getSession().getAttribute("actualProfessional");

        %>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <style>
            body {
                background-color: #f8f9fa;
            }
            .header {
                background-color: rgb(55 65 81);
                color: white;
                padding: 15px 0;
                text-align: center;
                font-size: 24px;
                font-weight: bold;
            }
            .container {
                margin-top: 50px;
            }
            .profile-card {
                background-color: #e9ecef;
                padding: 30px;
                border-radius: 10px;
                text-align: center;
            }
            .profile-card h2 {
                font-size: 28px;
                margin-bottom: 10px;
            }
            .profile-img {
                font-size: 100px;
                color: gray;
            }
            .specialization {
                font-size: 18px;
                font-weight: bold;
                margin-bottom: 20px;
            }
            .description {
                text-align: left;
                margin-top: 20px;
            }
            .description p {
                font-size: 16px;
            }
            .contact-info {
                margin-top: 30px;
                text-align: right;
            }
            .contact-info p {
                font-size: 16px;
                font-weight: bold;
            }
            .btn-contact {
                background-color: #28a745;
                color: white;
                border: none;
                padding: 10px 20px;
                font-size: 16px;
                cursor: pointer;
                border-radius: 5px;
                text-decoration: none;
            }
            .btn-calificar {
                background-color: rgb(55 65 81);
                color: white;
                border: none;
                padding: 10px 20px;
                font-size: 16px;
                cursor: pointer;
                border-radius: 5px;
                text-decoration: none;
            }
            .row {
                display: flex;
                justify-content: space-between;
            }
            .description, .contact-info {
                flex: 1;
            }
        </style>
    </head>

    <body>

        <div class="p-4 sm:ml-64">

            <div class="container">
                <div class="profile-card">
                    <h2><%= professional.getName()%></h2>
                    <div class="profile-img">
                        <img src="${pageContext.request.contextPath}/imagenes/Icon_Calificar.png" alt="Icono de Calificación" style="width: 150px; height: 150px;">
                    </div>
                    <div class="specialization">Especialización: <%= professional.getSpeciality()%></div>

                    <div class="row">
                        <div class="col-md-6 description">
                            <p><strong>Descripción</strong></p>
                            <p>
                                <%= professional.getDescription()%>
                            </p>
                        </div>
                        <div class="col-md-6 contact-info">
                            <p>Información de contacto</p><br>
                            <p>Correo Electrónico: <%= professional.getEmail()%></p>
                            <p>WhatsApp: <%= professional.getPhoneNumber()%></p>
                            <a href="ContactProfessional.jsp" class="btn-contact">Contactar</a>
                        </div>
                    </div>

                    <div class="mt-3">
                        <a href="CalificarProfesional.jsp" class="btn-calificar">Calificar</a>
                    </div>
                </div>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
