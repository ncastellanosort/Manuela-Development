/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Nicolas
 */
@Entity
public class Trastorno implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id;

    @Basic
    private String patient_id;
    private String professional_id;
    private String nombreDelTranstorno;
    private String especialidadProfesional;
    private String description;

    public Trastorno() {
    }

    public Trastorno(int id, String patient_id, String professional_id, String nombreDelTranstorno, String especialidadProfesional, String description) {
        this.id = id;
        this.patient_id = patient_id;
        this.professional_id = professional_id;
        this.nombreDelTranstorno = nombreDelTranstorno;
        this.especialidadProfesional = especialidadProfesional;
        this.description = description;
    }

    public Trastorno(String patient_id, String professional_id, String nombreDelTranstorno, String especialidadProfesional, String description) {
        this.patient_id = patient_id;
        this.professional_id = professional_id;
        this.nombreDelTranstorno = nombreDelTranstorno;
        this.especialidadProfesional = especialidadProfesional;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPatient_id() {
        return patient_id;
    }

    public void setPatient_id(String patient_id) {
        this.patient_id = patient_id;
    }

    public String getProfessional_id() {
        return professional_id;
    }

    public void setProfessional_id(String professional_id) {
        this.professional_id = professional_id;
    }

    public String getNombreDelTranstorno() {
        return nombreDelTranstorno;
    }

    public void setNombreDelTranstorno(String nombreDelTranstorno) {
        this.nombreDelTranstorno = nombreDelTranstorno;
    }

    public String getEspecialidadProfesional() {
        return especialidadProfesional;
    }

    public void setEspecialidadProfesional(String especialidadProfesional) {
        this.especialidadProfesional = especialidadProfesional;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
