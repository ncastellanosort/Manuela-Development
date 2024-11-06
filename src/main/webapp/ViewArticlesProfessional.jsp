<%@page import="com.mycompany.hu.sprint1.Entities.Article"%>
<%@page import="com.mycompany.hu.sprint1.Entities.ArticlesList"%>
<%@page import="com.mycompany.hu.sprint1.Tools.NewsAPI"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.util.Scanner"%>
<%@page import="org.json.JSONObject"%>
<%@include file="SidebarProfessional.jsp"%>
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

                    <article class="bg-white shadow-lg rounded-lg overflow-hidden max-w-md">
                        <img src="<%= article.getUrlImage()%>" alt="Thumbnail for The Future of AI in Web Development" class="w-full h-48 object-cover">
                        <div class="p-6">
                            <header class="mb-4">
                                <h2 class="text-xl font-bold text-gray-800 mb-2"><%= article.getTitle()%></h2>
                                <p class="text-sm text-gray-600 flex items-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-3 w-3 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                                    </svg>
                                    <%= article.getPublishedAt()%>
                                </p>
                            </header>
                            <div class="mb-4">
                                <p class="text-sm text-gray-600 line-clamp-3"><%= article.getDescription()%></p>
                            </div>
                            <footer class="flex flex-col items-start gap-4">
                                <div class="flex items-center w-full">
                                    <div class="h-8 w-8 rounded-full bg-gray-300 flex items-center justify-center mr-2 overflow-hidden">
                                        <svg class="h-5 w-5 text-gray-500" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd" />
                                        </svg>
                                    </div>
                                    <span class="text-sm font-medium text-gray-700"><%= article.getAuthor()%></span>
                                </div>
                                <a href="SvViewArticleProfessional?url=<%= article.getUrl()%>" target="_blank" rel="noopener noreferrer" class="w-full inline-flex items-center justify-center px-4 py-2 border border-gray-300 shadow-sm text-sm font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50 focus:outline-none">
                                    Leer más
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 ml-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14" />
                                    </svg>
                                </a>
                            </footer>
                        </div>
                    </article>

                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>
