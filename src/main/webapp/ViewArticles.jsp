<%@page import="com.mycompany.hu.sprint1.Entities.Article"%>
<%@page import="com.mycompany.hu.sprint1.Entities.ArticlesList"%>
<%@page import="com.mycompany.hu.sprint1.Tools.NewsAPI"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.util.Scanner"%>
<%@page import="org.json.JSONObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <script src="https://cdn.tailwindcss.com"></script>
        <style>
            .text-content {
                display: -webkit-box;
                -webkit-box-orient: vertical;
                overflow: hidden;
                text-overflow: ellipsis;
                -webkit-line-clamp: 5;
                max-height: 7.5em;
            }
        </style>
    </head>
    <body>
        <div class="p-4 sm:ml-64">
            <div class="flex flex-col items-center">
                <h2 class="text-3xl font-bold text-gray-900 mb-6">Artículos</h2>

                <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                    <%
                        NewsAPI newsAPI = new NewsAPI();
                        newsAPI.getData();

                        for (Article article : ArticlesList.getArticlesList()) {
                    %>
                    <div class="bg-white rounded-lg shadow-md p-4 w-full max-w-lg mx-auto transition hover:shadow-lg hover:-translate-y-1 duration-300 ease-out">

                        <div class="relative overflow-hidden rounded-lg h-48 mb-4">
                            <img src="<%= article.getUrlImage()%>" 
                                 alt="Imagen del artículo" 
                                 class="w-full h-full object-cover transition-transform transform hover:scale-110 duration-500">
                            <div class="absolute inset-0 bg-gradient-to-t from-gray-900 to-transparent opacity-60"></div>
                            <div class="absolute bottom-4 left-4 text-white">
                                <h2 class="text-lg font-bold"><%= article.getTitle()%></h2>
                            </div>
                        </div>

                        <div class="px-2">
                            <div class="text-gray-500 text-sm mb-2 flex items-center">
                                <span class="font-semibold"><%= article.getAuthor()%></span> 
                                <span class="mx-2">|</span>
                                <span><%= article.getPublishedAt()%></span>
                            </div>

                            <p class="text-gray-700 text-base leading-relaxed mb-4 line-clamp-3">
                                <%= article.getDescription()%>
                            </p>

                            <div class="text-right">
                                <a href="SvViewArticle?url=<%= article.getUrl()%>" 
                                   target="_blank" 
                                   class="inline-block bg-blue-600 hover:bg-blue-700 text-white text-sm px-5 py-2 rounded-full transition">
                                    Leer más
                                </a>
                            </div>
                        </div>
                    </div>

                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>
