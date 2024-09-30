package com.mycompany.hu.sprint1.Entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class EncuestaCategorizacionVO implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id;

    @Basic
    private int estadoAnimo;
    private int situacionEstresante;
    private int relacionComida;
    private int patronSueno;
    private int ninguna;
    private String categoriaPaciente;
    private int respuestas[] = new int[4];

    public EncuestaCategorizacionVO() {
    }

    public EncuestaCategorizacionVO(int id, int estadoAnimo, int situacionEstresante, int relacionComida, int patronSueno, int ninguna, String categoriaPaciente) {
        this.id = id;
        this.estadoAnimo = estadoAnimo;
        this.situacionEstresante = situacionEstresante;
        this.relacionComida = relacionComida;
        this.patronSueno = patronSueno;
        this.ninguna = ninguna;
        this.categoriaPaciente = categoriaPaciente;
    }

    public EncuestaCategorizacionVO(int estadoEmocional, int situacionEstresante, int relacionComida, int patronSueno, int ninguna, String categoriaPaciente) {
        this.estadoAnimo = estadoEmocional;
        this.situacionEstresante = situacionEstresante;
        this.relacionComida = relacionComida;
        this.patronSueno = patronSueno;
        this.ninguna = ninguna;
        this.categoriaPaciente = categoriaPaciente;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getEstadoAnimo() {
        return estadoAnimo;
    }

    public void setEstadoAnimo(int estadoAnimo) {
        this.estadoAnimo = estadoAnimo;
    }

    public String getCategoriaPaciente() {
        return categoriaPaciente;
    }

    public void setCategoriaPaciente(String categoriaPaciente) {
        this.categoriaPaciente = categoriaPaciente;
    }

    public int getNinguna() {
        return ninguna;
    }

    public void setNinguna(int ninguna) {
        this.ninguna = ninguna;
    }

    public int[] getRespuestas() {
        return respuestas;
    }

    public void setRespuestas(int[] respuestas) {
        this.respuestas = respuestas;
    }

    public int getEstadoEmocional() {
        return estadoAnimo;
    }

    public void setEstadoEmocional(int estadoEmocional) {
        this.estadoAnimo = estadoEmocional;
    }

    public int getSituacionEstresante() {
        return situacionEstresante;
    }

    public void setSituacionEstresante(int situacionEstresante) {
        this.situacionEstresante = situacionEstresante;
    }

    public int getRelacionComida() {
        return relacionComida;
    }

    public void setRelacionComida(int relacionComida) {
        this.relacionComida = relacionComida;
    }

    public int getPatronSueno() {
        return patronSueno;
    }

    public void setPatronSueno(int patronSueno) {
        this.patronSueno = patronSueno;
    }

    public void conteoRespuestas() {
        estadoAnimo = 0;
        situacionEstresante = 0;
        relacionComida = 0;
        patronSueno = 0;
        ninguna = 0;
        for (int i = 0; i < respuestas.length; i++) {
            if (respuestas[i] == 1) {
                estadoAnimo++;
            } else if (respuestas[i] == 2) {
                situacionEstresante++;
            } else if (respuestas[i] == 3) {
                relacionComida++;
            } else if (respuestas[i] == 4) {
                patronSueno++;
            } else if (respuestas[i] == 5) {
                ninguna++;
            }
        }
        /*
        System.out.println("estado animo " + estadoAnimo);
        System.out.println("Situacion estresante " + situacionEstresante);
        System.out.println("Relacion comida " + relacionComida);
        System.out.println("Patron sueno " + patronSueno);
        System.out.println("ninguna " + ninguna);
        System.out.println(" ");*/
    }

    public void categorizarArea() {

        if (estadoAnimo >= 2) {
            categoriaPaciente = "Trastornos del Estado de Animo";
        }

        if (situacionEstresante >= 2) {
            categoriaPaciente = "Trastornos de Ansiedad";
        }

        if (relacionComida >= 2) {
            categoriaPaciente = "Trastornos Alimentarios";
        }

        if (patronSueno >= 2) {
            categoriaPaciente = "Trastornos del Sueño";
        }

        if (ninguna >= 2) {
            categoriaPaciente = "Ninguna";
        }

        //combinaciones Trastornos estados de animo
        if (estadoAnimo == 2 && situacionEstresante == 2) {
            categoriaPaciente = "Trastornos del Estado de Animo y Trastornos de Ansiedad";
        }

        if (estadoAnimo == 2 && relacionComida == 2) {
            categoriaPaciente = "Trastornos del Estado de Animo y Trastornos Alimentarios";
        }

        if (estadoAnimo == 2 && patronSueno == 2) {
            categoriaPaciente = "Trastornos del Estado de Animo y Trastornos del Sueño";
        }

        if (estadoAnimo == 2 && ninguna == 2) {
            categoriaPaciente = "Trastornos del Estado de Animo";
        }

        //Combinaciones Trastornos ansiedad 
        if (situacionEstresante == 2 && relacionComida == 2) {
            categoriaPaciente = "Trastornos de Ansiedad y Trastornos Alimentarios";
        }

        if (situacionEstresante == 2 && patronSueno >= 2) {
            categoriaPaciente = "Trastornos de Ansiedad y Trastornos del Sueño";
        }

        if (patronSueno == 2 && ninguna == 2) {
            categoriaPaciente = "Trastornos de Ansiedad";
        }

        //Combinaciones Trastornos Alimentarios 
        if (relacionComida == 2 && patronSueno == 2) {
            categoriaPaciente = "Trastornos Alimentarios y Trastornos del Sueño";
        }

        if (relacionComida == 2 && ninguna == 2) {
            categoriaPaciente = "Trastornos Alimentarios";
        }

        //Combinaciones Trastornos del sueño
        if (patronSueno == 2 && ninguna == 2) {
            categoriaPaciente = "Trastornos del Sueño";
        }

        System.out.println("Categoria: " + categoriaPaciente);
        System.out.println("-------------------------------");

    }

}
