<%-- 
    Document   : ArticlesProfessional
    Created on : Nov 5, 2024, 4:12:43 PM
    Author     : Nicolas
--%>

<%@page import="com.mycompany.hu.sprint1.Entities.Article"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="SidebarProfessional.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Artículo</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="bg-gray-100">

        <%
            Article article = (Article) request.getSession().getAttribute("articleToDisplayProfessional");
        %>

        <div class="p-4 sm:ml-64 flex justify-center">
            <article class="bg-white shadow-lg rounded-lg overflow-hidden">
                <img src="<%= article.getUrlImage()%>" alt="Article image" class="w-full h-64 object-cover sm:h-96">

                <div class="p-6">
                    <h1 id="title" class="text-3xl font-bold text-gray-900 mb-2"><%= article.getTitle()%></h1>

                    <div class="flex items-center text-gray-600 text-sm mb-4">
                        <svg class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                        </svg>
                        <span id="author" class="mr-4"><%= article.getAuthor()%></span>

                        <svg class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                        </svg>
                        <time id="publishedAt" datetime="2024-05-11"><%= article.getPublishedAt()%></time>
                    </div>

                    <p id="description" class="text-gray-700 text-lg mb-6">
                        <%= article.getDescription()%>
                    </p>

                    <div id="content" class="prose max-w-none">
                        <p><%= article.getContent()%></p>
                    </div>

                    <div class="mt-8">
                        <h2 class="text-xl font-semibold text-gray-900 mb-2">Source Information</h2>
                        <p id="name" class="text-gray-600 mb-1"><%= article.getAuthor()%></p>
                        <a id="url" href="<%= article.getUrl()%>" target="_blank" rel="noopener noreferrer" class="inline-block px-4 py-2 mt-2 bg-blue-600 text-white font-semibold rounded-lg shadow-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-opacity-75 transition-colors duration-200">
                            Read original article
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 inline-block ml-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14" />
                            </svg>
                        </a>
                    </div>
                </div>
            </article>
        </div>
    </body>
</html>
