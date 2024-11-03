/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Tools;

import com.mycompany.hu.sprint1.Entities.Article;
import com.mycompany.hu.sprint1.Entities.ArticlesList;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Scanner;
import org.json.JSONObject;

/**
 *
 * @author Nicolas
 */
public class NewsAPI {

    private URL url;
    private HttpURLConnection con;

    public NewsAPI() throws MalformedURLException, IOException {
        this.url = new URL("https://newsapi.org/v2/top-headlines?q=health&category=health&apiKey=bce53f8467d54ada8f7879210ae35079");
        this.con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("GET");
        con.setRequestProperty("Content-Type", "application/json");
    }

    public URL getUrl() {
        return url;
    }

    public void setUrl(URL url) {
        this.url = url;
    }

    public HttpURLConnection getCon() {
        return con;
    }

    public void setCon(HttpURLConnection con) {
        this.con = con;
    }

    public void getData() throws IOException {

        this.con.connect();

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

                    String name = data.getJSONArray("articles").getJSONObject(i).getJSONObject("source").getString("name");
                    String title = data.getJSONArray("articles").getJSONObject(i).getString("title");
                    String author = data.getJSONArray("articles").getJSONObject(i).getString("author");
                    String description = data.getJSONArray("articles").getJSONObject(i).getString("description");
                    String urlLink = data.getJSONArray("articles").getJSONObject(i).getString("url");
                    String urlImage = data.getJSONArray("articles").getJSONObject(i).getString("urlToImage");
                    String publishedAt = data.getJSONArray("articles").getJSONObject(i).getString("publishedAt");
                    String content = data.getJSONArray("articles").getJSONObject(i).getString("content");

                    ArticlesList.getArticlesList().add(new Article(name, title, author, description, urlLink, urlImage, publishedAt, content));

                }
            }

        }
    }
}
