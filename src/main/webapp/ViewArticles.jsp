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
                        URL url = new URL("https://newsapi.org/v2/top-headlines?q=health&category=health&apiKey=bce53f8467d54ada8f7879210ae35079");
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

                            JSONObject data = new JSONObject(String.valueOf(stringBuilder));

                            for (int i = 0; i < data.getInt("totalResults"); i++) {
                                JSONObject article = data.getJSONArray("articles").getJSONObject(i);

                                if (article.getString("title").equals("[Removed]")
                                        || !article.has("author") || !article.has("urlToImage")
                                        || article.isNull("author") || article.isNull("urlToImage")) {
                                    continue;
                                }
                                if (article.get("author") instanceof String) {
                    %>
                    <div class="bg-white shadow-lg rounded-lg p-6 w-full transition transform hover:scale-95 duration-300">
                        <div class="flex items-start space-x-6">
                            <div class="w-40 h-40 bg-gray-200 rounded-lg overflow-hidden flex-shrink-0">
                                <img src="<%= data.getJSONArray("articles").getJSONObject(i).getString("urlToImage")%>" 
                                     alt="Article thumbnail" 
                                     class="w-full h-full object-cover">
                            </div>

                            <div class="flex-1">
                                <a href="<%= data.getJSONArray("articles").getJSONObject(i).getString("url")%>" 
                                   target="_blank" 
                                   class="text-gray-900 hover:text-gray-600 transition font-bold text-xl mb-2 block">
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
                    <%
                                }
                            }
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>
