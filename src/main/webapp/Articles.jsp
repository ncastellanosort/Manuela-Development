<%@page import="com.mycompany.hu.sprint1.Entities.Article"%>
<!DOCTYPE html>
<%@include file="SidebarPatient.jsp"%>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Artículo</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="bg-gray-100">

        <%
            Article article = (Article) request.getSession().getAttribute("articleToDisplay");
        %>

        <div class="p-4 sm:ml-64 flex justify-center">
            <div class="w-full lg:w-3/4 xl:w-2/3 bg-white shadow-lg rounded-lg overflow-hidden">


                <div class="w-full h-64 overflow-hidden">
                    <img src="<%= article.getUrlImage()%>" alt="Imagen del artículo" class="w-full h-full object-cover">
                </div>


                <div class="p-6">
                    <h1 class="text-3xl font-bold text-gray-900 mb-4 text-center"><%= article.getTitle()%></h1>

                    <div class="text-gray-600 text-sm mb-4 text-center">
                        <span class="font-semibold">Autor:</span> <%= article.getAuthor()%>
                        <span class="mx-2">|</span>
                        <span class="font-semibold">Publicado:</span> <%= article.getPublishedAt()%>
                    </div>

                    <div class="text-gray-700 mb-6 text-justify">
                        <p class="text-lg leading-relaxed">
                            <%= article.getDescription()%>
                        </p>
                    </div>

                    <div class="content-container text-gray-700 bg-gray-50 p-4 rounded-lg shadow-inner leading-relaxed mb-6">
                        <%= article.getContent()%>
                    </div>

                    <div class="text-center">
                        <a href="<%= article.getUrl()%>" target="_blank" class="inline-block px-6 py-3 text-white bg-blue-600 hover:bg-blue-500 rounded-lg font-semibold shadow-md transition">
                            Leer Artículo Completo
                        </a>
                    </div>
                </div>

            </div>
        </div>

    </body>
</html>
