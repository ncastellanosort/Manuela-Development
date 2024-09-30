
<%@page import="com.mycompany.hu.sprint1.Entities.EncuestaDiariaVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

            .center-content {
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                height: auto; /* Dejar que el contenido determine la altura */
                text-align: center;
                margin-bottom: 2vh;
                margin-top: 10vh; /* Ajusta este valor según tu preferencia */
            }




            .centered-div {
                margin-bottom: 5vh; /* Controla el espacio debajo del div */


            }

            .centered-div h4 {
                font-weight: 400; /* Ajusta el grosor del texto, 400 es normal, 700 es bold */
            }

            .container{
                margin-bottom: 5vh;

            }

            .custom-div {
                border: 1px solid #ccc; /* Borde opcional para visualización */
                padding: 20px;
                text-align: center;
                min-height: 20vh;
            }

            .btn-custom{
                background-color: rgb(55 65 81);
                color: white;
            }

            .btn-custom:hover{
                color: white;
                background-color:  #9A9A9A;
            }

        </style>
    </head>
    <body>
        <nav class="navbar navbar-custom">
            <div class="container-fluid">
                <a class="navbar-brand mx-auto" href="#">MPS Paciente</a> 
            </div>
        </nav>

        <%
            EncuestaDiariaVO encuestaDiariaVO = (EncuestaDiariaVO) request.getSession().getAttribute("encuestaDiariaVO");

        %>

        <div class="center-content">
            <h1>¡Encuesta realizada!</h1>
            <h2>30/09/2024</h2>
        </div>

        <div class="centered-div d-flex justify-content-center">
            <div class="d-flex gap-3">
                <h4>Estado de ánimo: <strong><%=encuestaDiariaVO.getEstadoAnimo()%></strong></h4>
                <h4>Nivel de energía: <strong><%=encuestaDiariaVO.getNivelEnergia()%></strong></h4>
                <h4>Estrés/ansiedad: <strong><%=encuestaDiariaVO.getEstresAnsiedad()%></strong></h4>
            </div>
        </div>

        <div class="container full-height d-flex align-items-center justify-content-center mt-0">
            <div class="row w-100">
                <div class="col-md-6 custom-div">
                    <h2>Balance general</h2>
                    <p><%=encuestaDiariaVO.getBalanceGeneral()%></p>
                </div>
                <div class="col-md-6 custom-div">
                    <h2>Recomendación</h2>
                    <p><%=encuestaDiariaVO.getRecomendacion()%></p>
                </div>
            </div>
        </div>

        <div class="text-center">
            <form action="SvEncuestaDiaria" method="GET">
                <button type="submit" class="btn btn-custom">Ver Encuestas Realizadas</button>
            </form>

        </div>
    </body>
</html>
