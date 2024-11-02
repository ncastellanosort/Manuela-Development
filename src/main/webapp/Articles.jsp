<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="SidebarMainUser.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Articles</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <style>
            .main-container {
                margin-top: 60px;
            }

            .summary-container {
                background-color: #f2f2f2;
                padding: 20px;
                border-radius: 8px;
                max-width: 700px;
                text-align: center;
                margin-top: 25px;
                font-size: 1rem;
                color: #333;
            }

            .nombre-articulo {
                font-weight: 400;
                margin-bottom: 0px;
            }

            h2 {
                font-weight: 300;
                margin-bottom: 0px;
                font-size: 1.8rem;
            }
        </style>
    </head>
    <body class="bg-gray-100">
        <div class="p-4 sm:ml-64">
            <div class="main-container flex flex-col items-center">
                <h1 class="nombre-articulo text-2xl font-bold">Nombre del artículo</h1>
                <h2 class="nombre-autor text-xl">Nombre del autor</h2>
                <h2 class="fecha text-md">DD/MM/AAAA</h2>

                <div class="summary-container">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed malesuada nisl, ut tempus sapien. Vestibulum ut convallis eros. Sed et sem sollicitudin felis condimentum vestibulum. Duis efficitur pulvinar ipsum, non scelerisque arcu cursus sed. Etiam auctor elit et dapibus facilisis. Mauris ultrices, tellus vitae commodo efficitur, metus libero interdum ante, at ultricies leo odio at neque. Fusce suscipit nulla at lectus ultrices porttitor. Suspendisse feugiat orci sed elit tempor, a vestibulum tellus efficitur. Nullam fringilla lorem vitae orci rhoncus tristique. Aliquam lobortis massa vitae faucibus vehicula.
                </div>

                <a href="#" class="mt-3 inline-block px-4 py-2 text-white bg-gray-800 hover:bg-gray-600 rounded-lg">Artículo Completo</a>
            </div>
        </div>
    </body>
</html>
