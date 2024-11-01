<%-- 
    Document   : MainUser
    Created on : Nov 1, 2024, 9:39:07 AM
    Author     : Nicolas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <style>

            .main-container {
                margin-top: 60px;
            }

            .card {
                margin-bottom: 1rem;
                width: 50rem;
            }

            .info-left {
                text-align: left;
                margin-left: 2rem;

            }

            .title-card{
                font-size: 25px;

            }
        </style>
    </head>
    <body>
        <button data-drawer-target="default-sidebar" data-drawer-toggle="default-sidebar" aria-controls="default-sidebar" type="button" class="inline-flex items-center p-2 mt-2 ms-3 text-sm text-gray-500 rounded-lg sm:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600">
            <span class="sr-only">Open sidebar</span>
            <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
            <path clip-rule="evenodd" fill-rule="evenodd" d="M2 4.75A.75.75 0 012.75 4h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 4.75zm0 10.5a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5a.75.75 0 01-.75-.75zM2 10a.75.75 0 01.75-.75h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 10z"></path>
            </svg>
        </button>

        <header class="sm:ml-64 bg-gray-700 py-4">
            <h1 class="text-white text-2xl font-bold text-center">MPS</h1>
        </header>
        <aside id="default-sidebar" class="fixed top-0 left-0 z-40 w-64 h-screen transition-transform -translate-x-full sm:translate-x-0" aria-label="Sidebar">
            <div class="h-full px-3 py-4 overflow-y-auto bg-gray-50 dark:bg-gray-800">
                <ul class="space-y-2 font-medium">

                    <li>
                        <a href="Index.jsp" class="flex items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                            <svg class="flex-shrink-0 w-5 h-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 16">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 8h11m0 0L8 4m4 4-4 4m4-11h3a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-3"/>
                            </svg>
                            <span class="flex-1 ms-3 whitespace-nowrap">Ingresar</span>
                        </a>
                    </li>
                </ul>
            </div>
        </aside>

        <div class="p-4 sm:ml-64">
            <div class="main-container d-flex flex-column align-items-center">
                <div class="card">
                    <div class="card-body">
                        <div class="row">

                            <div class="col-5 info-left">
                                <p class="title-card mb-1"><strong>Nombre del artículo </strong></p>
                                <p class="mb-1">Nombre del autor</p>
                                <p class="mb-1">DD/MM/AAAA</p>
                            </div>

                            <div class="col-6">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed malesuada nisl, ut tempus sapien. Vestibulum ut convallis eros. Sed et sem sollicitudin felis condimentum vestibulum. Duis efficitur pulvinar ipsum.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <div class="row">

                            <div class="col-5 info-left">
                                <p class="title-card mb-1"><strong>Nombre del artículo </strong></p>
                                <p class="mb-1">Nombre del autor</p>
                                <p class="mb-1">DD/MM/AAAA</p>
                            </div>

                            <div class="col-6">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed malesuada nisl, ut tempus sapien. Vestibulum ut convallis eros. Sed et sem sollicitudin felis condimentum vestibulum. Duis efficitur pulvinar ipsum.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <div class="row">

                            <div class="col-5 info-left">
                                <p class="title-card mb-1"><strong>Nombre del artículo </strong></p>
                                <p class="mb-1">Nombre del autor</p>
                                <p class="mb-1">DD/MM/AAAA</p>
                            </div>

                            <div class="col-6">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed malesuada nisl, ut tempus sapien. Vestibulum ut convallis eros. Sed et sem sollicitudin felis condimentum vestibulum. Duis efficitur pulvinar ipsum.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <div class="row">

                            <div class="col-5 info-left">
                                <p class="title-card mb-1"><strong>Nombre del artículo </strong></p>
                                <p class="mb-1">Nombre del autor</p>
                                <p class="mb-1">DD/MM/AAAA</p>
                            </div>

                            <div class="col-6">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed malesuada nisl, ut tempus sapien. Vestibulum ut convallis eros. Sed et sem sollicitudin felis condimentum vestibulum. Duis efficitur pulvinar ipsum.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <div class="row">

                            <div class="col-5 info-left">
                                <p class="title-card mb-1"><strong>Nombre del artículo </strong></p>
                                <p class="mb-1">Nombre del autor</p>
                                <p class="mb-1">DD/MM/AAAA</p>
                            </div>

                            <div class="col-6">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed malesuada nisl, ut tempus sapien. Vestibulum ut convallis eros. Sed et sem sollicitudin felis condimentum vestibulum. Duis efficitur pulvinar ipsum.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
            </div>
        </div>
    </body>
</html>
