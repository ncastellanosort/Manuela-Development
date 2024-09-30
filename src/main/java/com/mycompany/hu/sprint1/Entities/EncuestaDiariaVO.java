package com.mycompany.hu.sprint1.Entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class EncuestaDiariaVO implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id;

    @Basic
    private String estadoAnimo;
    private String nivelEnergia;
    private String estresAnsiedad;
    private String balanceGeneral;
    private String recomendacion;

    public EncuestaDiariaVO() {
    }

    public EncuestaDiariaVO(int id, String estadoAnimo, String nivelEnergia, String estresAnsiedad, String balanceGeneral, String recomendacion) {
        this.id = id;
        this.estadoAnimo = estadoAnimo;
        this.nivelEnergia = nivelEnergia;
        this.estresAnsiedad = estresAnsiedad;
        this.balanceGeneral = balanceGeneral;
        this.recomendacion = recomendacion;
    }

    public EncuestaDiariaVO(String estadoAnimo, String nivelEnergia, String estresAnsiedad, String balanceGeneral, String recomendacion) {
        this.estadoAnimo = estadoAnimo;
        this.nivelEnergia = nivelEnergia;
        this.estresAnsiedad = estresAnsiedad;
        this.balanceGeneral = balanceGeneral;
        this.recomendacion = recomendacion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEstadoAnimo() {
        return estadoAnimo;
    }

    public void setEstadoAnimo(String estadoAnimo) {
        this.estadoAnimo = estadoAnimo;
    }

    public String getNivelEnergia() {
        return nivelEnergia;
    }

    public void setNivelEnergia(String nivelEnergia) {
        this.nivelEnergia = nivelEnergia;
    }

    public String getEstresAnsiedad() {
        return estresAnsiedad;
    }

    public void setEstresAnsiedad(String estresAnsiedad) {
        this.estresAnsiedad = estresAnsiedad;
    }

    public String getBalanceGeneral() {
        return balanceGeneral;
    }

    public void setBalanceGeneral(String balanceGeneral) {
        this.balanceGeneral = balanceGeneral;
    }

    public String getRecomendacion() {
        return recomendacion;
    }

    public void setRecomendacion(String recomendacion) {
        this.recomendacion = recomendacion;
    }

    public void combinatoriaRespuestas() {
        if (estadoAnimo.equals("Bueno") && nivelEnergia.equals("Alta")
                && estresAnsiedad.equals("Todo el dia")) {
            balanceGeneral = "Te sientes bien y con mucha energía, pero la ansiedad constante podría afectar tu bienestar.";
            recomendacion = "Prueba técnicas de manejo del estrés como meditación o respiración profunda para reducir la ansiedad.";
        }

        if (estadoAnimo.equals("Bueno") && nivelEnergia.equals("Alta")
                && estresAnsiedad.equals("A veces")) {
            balanceGeneral = "Te sientes bien y con energía, pero experimentaste algunos momentos de ansiedad.";
            recomendacion = "Practica técnicas como la respiración profunda o pequeños descansos para reducir el estrés.";
        }

        if (estadoAnimo.equals("Bueno") && nivelEnergia.equals("Alta")
                && estresAnsiedad.equals("Nunca")) {
            balanceGeneral = "Te sientes bien, con energía y no has experimentado ansiedad durante el día.";
            recomendacion = "Sigue con tus prácticas de autocuidado para mantener este bienestar físico y emocional.";
        }

        if (estadoAnimo.equals("Bueno") && nivelEnergia.equals("Normal")
                && estresAnsiedad.equals("Todo el dia")) {
            balanceGeneral = "Te sientes bien, pero la ansiedad constante puede afectar tu bienestar.";
            recomendacion = "Prueba técnicas de relajación, como la meditación o hablar con un profesional para manejar la ansiedad.";
        }

        if (estadoAnimo.equals("Bueno") && nivelEnergia.equals("Normal")
                && estresAnsiedad.equals("A veces")) {
            balanceGeneral = "Te sientes bien y tu energía es normal, pero tuviste momentos de ansiedad.";
            recomendacion = "Usa técnicas de manejo del estrés, como pausas activas o actividades que disfrutes para reducir la ansiedad.";
        }

        if (estadoAnimo.equals("Bueno") && nivelEnergia.equals("Normal")
                && estresAnsiedad.equals("Nunca")) {
            balanceGeneral = "Te sientes bien y con energía normal, sin haber experimentado ansiedad.";
            recomendacion = "Continúa cuidando tu bienestar físico y emocional con prácticas saludables.";
        }

        if (estadoAnimo.equals("Bueno") && nivelEnergia.equals("Baja")
                && estresAnsiedad.equals("Todo el dia")) {
            balanceGeneral = "Te sientes bien, pero la baja energía y la ansiedad constante podrían estar afectando tu día.";
            recomendacion = "Descansa bien y practica meditación o ejercicios de respiración para reducir la ansiedad.";
        }

        if (estadoAnimo.equals("Bueno") && nivelEnergia.equals("Baja")
                && estresAnsiedad.equals("A veces")) {
            balanceGeneral = "Te sientes bien, pero la baja energía y los momentos de ansiedad pueden afectar tu productividad.";
            recomendacion = "Incorpora descansos y técnicas de relajación para mejorar tu energía y reducir la ansiedad.";
        }

        if (estadoAnimo.equals("Bueno") && nivelEnergia.equals("Baja")
                && estresAnsiedad.equals("Nunca")) {
            balanceGeneral = "Te sientes bien, pero la baja energía puede dificultar tus actividades, aunque no has tenido ansiedad.";
            recomendacion = "Descansa bien, aliméntate adecuadamente y realiza actividades que te recarguen de energía.";
        }

        if (estadoAnimo.equals("Neutro") && nivelEnergia.equals("Alta")
                && estresAnsiedad.equals("Todo el dia")) {
            balanceGeneral = "Te sientes neutral, con buena energía, pero la ansiedad constante afecta tu bienestar.";
            recomendacion = "Prueba técnicas de relajación para manejar la ansiedad y evitar que afecte tu salud.";
        }

        if (estadoAnimo.equals("Neutro") && nivelEnergia.equals("Alta")
                && estresAnsiedad.equals("A veces")) {
            balanceGeneral = "Te sientes neutral y con energía alta, aunque has tenido momentos de ansiedad.";
            recomendacion = "Usa técnicas de relajación y equilibrar tus actividades con momentos de descanso.";
        }

        if (estadoAnimo.equals("Neutro") && nivelEnergia.equals("Alta")
                && estresAnsiedad.equals("Nunca")) {
            balanceGeneral = "Te sientes neutral, con buena energía, y no has experimentado ansiedad.";
            recomendacion = "Mantén el equilibrio entre tus actividades y momentos de autocuidado para seguir bien.";
        }

        if (estadoAnimo.equals("Neutro") && nivelEnergia.equals("Normal")
                && estresAnsiedad.equals("Todo el dia")) {
            balanceGeneral = "Te sientes neutral y con energía normal, pero la ansiedad constante puede afectarte.";
            recomendacion = "Explora técnicas de manejo de ansiedad, como respiración profunda o meditación.";
        }

        if (estadoAnimo.equals("Neutro") && nivelEnergia.equals("Normal")
                && estresAnsiedad.equals("A veces")) {
            balanceGeneral = "Te sientes neutral, con energía normal, aunque has experimentado algo de ansiedad.";
            recomendacion = "Monitorea los momentos de ansiedad y usa técnicas de relajación para reducirlos.";
        }

        if (estadoAnimo.equals("Neutro") && nivelEnergia.equals("Normal")
                && estresAnsiedad.equals("Nunca")) {
            balanceGeneral = "Te sientes neutral, con energía normal y sin haber tenido ansiedad.";
            recomendacion = "Mantén este equilibrio físico y emocional con hábitos de autocuidado y descanso.";
        }

        if (estadoAnimo.equals("Neutro") && nivelEnergia.equals("Baja")
                && estresAnsiedad.equals("Todo el dia")) {
            balanceGeneral = "Te sientes neutral, pero con baja energía y ansiedad constante que podrían afectarte.";
            recomendacion = "Usa técnicas de relajación y asegúrate de descansar lo suficiente para mejorar tu bienestar.";
        }

        if (estadoAnimo.equals("Neutro") && nivelEnergia.equals("Baja")
                && estresAnsiedad.equals("A veces")) {
            balanceGeneral = "Te sientes neutral y con baja energía, pero has tenido momentos de ansiedad.";
            recomendacion = "Realiza actividades relajantes y asegúrate de descansar bien para mejorar tu energía.";
        }

    }
}
