<%-- 
    Document   : SidebarMainUser
    Created on : Nov 1, 2024, 7:21:59 PM
    Author     : Nicolas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body>
        <nav class="bg-white border-gray-200 dark:bg-gray-700 fixed top-0 w-full z-50">
            <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
                <a href="MainUser.jsp" class="flex items-center space-x-3 rtl:space-x-reverse">
                    <span class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white">MPS</span>
                </a>
                <button data-collapse-toggle="navbar-default" type="button" class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="navbar-default" aria-expanded="false">
                    <span class="sr-only">Open main menu</span>
                    <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 1h15M1 7h15M1 13h15"/>
                    </svg>
                </button>
                <div class="hidden w-full md:block md:w-auto" id="navbar-default">
                    <ul class="font-medium flex flex-col p-4 md:p-0 mt-4 border border-gray-100 rounded-lg bg-gray-50 md:flex-row md:space-x-8 rtl:space-x-reverse md:mt-0 md:border-0 md:bg-white dark:text-gray-100 md:dark:bg-gray-700 dark:border-gray-700">
                        <li>
                            <a href="MainUser.jsp" class="block py-2 px-3 text-white rounded md:hover:bg-transparent md:border-0 md:hover:text-gray-200 md:p-0 dark:text-white md:dark:hover:text-gray-100 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent" aria-current="page">Artículos</a>
                        </li>
                        <li>
                            <a href="Index.jsp" class="block py-2 px-3 text-white rounded md:hover:bg-transparent md:border-0 md:hover:text-gray-200 md:p-0 dark:text-white md:dark:hover:text-gray-100 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Ingresar</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
    </body>
</html>
