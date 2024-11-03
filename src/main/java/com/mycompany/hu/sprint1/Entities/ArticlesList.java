/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Entities;

import java.util.ArrayList;

/**
 *
 * @author Nicolas
 */
public class ArticlesList {

    private static ArrayList<Article> articlesList = new ArrayList();

    public static ArrayList<Article> getArticlesList() {
        return articlesList;
    }

    public static void setArticlesList(ArrayList<Article> articlesList) {
        ArticlesList.articlesList = articlesList;
    }

}
