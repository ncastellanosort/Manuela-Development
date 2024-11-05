/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.hu.sprint1.Servlets;

import com.mycompany.hu.sprint1.Entities.Article;
import com.mycompany.hu.sprint1.Entities.ArticlesList;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nicolas
 */
@WebServlet(name = "SvViewArticleMainUser", urlPatterns = {"/SvViewArticleMainUser"})
public class SvViewArticleMainUser extends HttpServlet {

    List<Article> articlesList = ArticlesList.getArticlesList();
    Article articleToDisplay;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String urlQuery = request.getParameter("url");

        for (Article article : articlesList) {
            if (article.getUrl().equals(urlQuery)) {
                articleToDisplay = new Article(article.getName(), article.getTitle(), article.getAuthor(), article.getDescription(), article.getUrl(), article.getUrlImage(), article.getPublishedAt(), article.getContent());
            }
        }

        request.getSession().setAttribute("articleToDisplayMainUser", articleToDisplay);

        response.sendRedirect("ArticlesMainUser.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
