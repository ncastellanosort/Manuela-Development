<%@page import="java.util.Scanner"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.HttpURLConnection"%>
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

                <h2 class="text-3xl font-bold text-gray-900 mb-6">Artículos</h2>

                <div class="flex flex-col items-center space-y-4">
                    <%
                        URL url = new URL("https://newsapi.org/v2/top-headlines?category=health&apiKey=bce53f8467d54ada8f7879210ae35079");
                        HttpURLConnection con = (HttpURLConnection) url.openConnection();
                        con.setRequestMethod("GET");
                        con.setRequestProperty("Content-Type", "application/json");
                        con.connect();

                        int responseCode = con.getResponseCode();

                        if (responseCode != 200) {
                            System.out.println("Algo paso");
                        } else {
                            StringBuilder stringBuilder = new StringBuilder();

                            Scanner scanner = new Scanner(url.openStream());

                            while (scanner.hasNext()) {
                                stringBuilder.append(scanner.nextLine());
                            }

                            scanner.close();

                            System.out.println(stringBuilder);

                            JSONObject data = new JSONObject(String.valueOf(stringBuilder));

                            for (int i = 0; i < 10; i++) {


                    %>

                    <div class="bg-white shadow-lg rounded-lg p-6 w-full max-w-4xl transition transform hover:scale-95 duration-300">
                        <div class="flex items-center space-x-6">

                            <div class="w-32 h-32 bg-gray-200 rounded-lg overflow-hidden flex-shrink-0">
                                <img src="<%= data.getJSONArray("articles").getJSONObject(i).getString("urlToImage")%>" 
                                     alt="Article thumbnail" 
                                     class="w-full h-full object-cover">
                            </div>

                            <div class="flex-1">

                                <a href="<%= data.getJSONArray("articles").getJSONObject(i).getString("url")%>" 
                                   target="_blank" 
                                   class="text-gray-900 hover:text-gray-600 transition font-bold text-2xl mb-2 block">
                                    <%= data.getJSONArray("articles").getJSONObject(i).getString("title")%>
                                </a>


                                <div class="text-gray-500 text-sm mb-2">
                                    <span><%= data.getJSONArray("articles").getJSONObject(i).getString("author")%></span> 
                                    <span class="mx-1">|</span>
                                    <span><%= data.getJSONArray("articles").getJSONObject(i).getString("publishedAt")%></span>
                                </div>


                                <p class="text-gray-700 leading-relaxed">
                                    <%= data.getJSONArray("articles").getJSONObject(i).getString("description")%>
                                </p>
                            </div>
                        </div>
                    </div>


                    <% }
                        }%>

                </div>
            </div>
        </div>
    </body>
</html>
