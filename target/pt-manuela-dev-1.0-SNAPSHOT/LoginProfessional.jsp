<%-- 
    Document   : LoginProfessional
    Created on : Sep 29, 2024, 8:52:54 AM
    Author     : Nicolas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MPS Professional</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="h-screen flex flex-col">
        <header class="w-full bg-gray-700 py-4">
            <h1 class="text-white text-2xl font-bold text-center">MPS Profesional</h1>
        </header>

        <section class="flex-grow bg-gray-50 flex items-center justify-center">
            <div class="w-full bg-white rounded-lg shadow sm:max-w-md">
                <div class="p-6 space-y-4 sm:p-8">
                    <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl">
                        Ingresa a tu cuenta
                    </h1>
                    <form class="space-y-4" action="SvLoginProfessional" method="POST">
                        <div>
                            <label for="email" class="block mb-2 text-sm font-medium text-gray-900">Email</label>
                            <input type="email" name="email" id="email" class="bg-gray-50 border border-gray-300 text-gray-900 rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" placeholder="name@company.com" required="">
                        </div>
                        <div>
                            <label for="password" class="block mb-2 text-sm font-medium text-gray-900">Contraseña</label>
                            <input type="password" name="password" id="password" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" required="">
                        </div>
                        <div class="flex items-center justify-between">
                            <div class="flex items-start">
                                <div class="flex items-center h-5">
                                    <input id="remember" aria-describedby="remember" type="checkbox" class="w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-primary-300">
                                </div>
                                <div class="ml-3 text-sm">
                                    <label for="remember" class="text-gray-500">Acuérdame</label>
                                </div>
                            </div>
                            <a href="#" class="text-sm font-medium text-primary-600 hover:underline">Olvidaste tu contraseña?</a>
                        </div>
                        <button type="submit" class="w-full text-white bg-gray-700 hover:bg-primary-700 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">Ingresar</button>
                        <p class="text-sm font-light text-gray-500">
                            No tienes una cuenta? <a href="ProfessionalRegister.jsp" class="font-medium text-primary-600 hover:underline">Regístrate</a>
                        </p>
                    </form>
                </div>
            </div>
        </section>
    </body>
</html>
