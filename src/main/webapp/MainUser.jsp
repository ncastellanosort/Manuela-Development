<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="SidebarMainUser.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <style>
            .text-content {
                display: -webkit-box;
                -webkit-box-orient: vertical;
                overflow: hidden;
                text-overflow: ellipsis;
                -webkit-line-clamp: 5; /* Limita a 5 líneas */
                max-height: 7.5em; /* Ajusta según el tamaño de línea */
            }
        </style>
    </head>
    <body class="bg-gray-100">
        
        <div class="p-4 sm:ml-64">
            <div class="flex flex-col items-center">
                <div class="flex flex-col items-center space-y-4">
                    <div class="bg-white shadow-lg rounded-lg p-4 w-full max-w-2xl">
                        <div class="flex items-center">
                            <div class="flex-1">
                                <a href="Articles.jsp" class="text-black hover:text-cadetblue">
                                    <p class="text-xl font-bold mb-1">Nombre del artículo</p>
                                </a>
                                <p class="mb-1">Nombre del autor</p>
                                <p class="mb-1">DD/MM/AAAA</p>
                            </div>
                            <div class="flex-1">
                                <p class="text-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed malesuada nisl, ut tempus sapien. Vestibulum ut convallis eros. Sed et sem sollicitudin felis condimentum vestibulum. Duis efficitur pulvinar ipsum. Duis efficitur pulvinar ips.</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>
