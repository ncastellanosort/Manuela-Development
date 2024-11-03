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
                <h2 class="text-3xl font-bold text-gray-900 mb-6">Articulos</h2>

                <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                    <%
                        NewsAPI newsAPI = new NewsAPI();
                        newsAPI.getData();

                        for (Article article : ArticlesList.getArticlesList()) {
                    %>
                    <div class="bg-white shadow-lg rounded-lg p-6 w-full transition transform hover:scale-95 duration-300">
                        <div class="flex items-start space-x-6">
                            <div class="w-40 h-40 bg-gray-200 rounded-lg overflow-hidden flex-shrink-0">
                                <img src="<%= article.getUrlImage()%>" 
                                     alt="Article thumbnail" 
                                     class="w-full h-full object-cover">
                            </div>

                            <div class="flex-1">
                                <a href="<%= article.getUrl()%>" 
                                   target="_blank" 
                                   class="text-gray-900 hover:text-gray-600 transition font-bold text-xl mb-2 block">
                                    <%= article.getTitle()%>
                                </a>

                                <div class="text-gray-500 text-sm mb-2">
                                    <span><%= article.getAuthor()%></span> 
                                    <span class="mx-1">|</span>
                                    <span><%= article.getPublishedAt()%></span>
                                </div>

                                <p class="text-gray-700 leading-relaxed">
                                    <%= article.getDescription()%>
                                </p>
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
