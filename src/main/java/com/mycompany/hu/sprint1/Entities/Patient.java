/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author Nicolas
 */
@Entity
public class Patient implements Serializable {

    @Id
    private String identificationNumber;

    @Basic
    private String identificationType;
    private String name;
    private String lastname;
    private String phoneNumber;
    private String department;
    private String town;
    private String houseAddress;
    private String email;
    private String password;
    private String confirmPassword;
    // paciente, trastorno y profesional

    public Patient() {
    }

    public Patient(String identificationNumber, String identificationType, String name, String lastname, String phoneNumber, String department, String town, String houseAddress, String email, String password, String confirmPassword) {
        this.identificationNumber = identificationNumber;
        this.identificationType = identificationType;
        this.name = name;
        this.lastname = lastname;
        this.phoneNumber = phoneNumber;
        this.department = department;
        this.town = town;
        this.houseAddress = houseAddress;
        this.email = email;
        this.password = password;
        this.confirmPassword = confirmPassword;
    }

    public String getIdentificationNumber() {
        return identificationNumber;
    }

    public void setIdentificationNumber(String identificationNumber) {
        this.identificationNumber = identificationNumber;
    }

    public String getIdentificationType() {
        return identificationType;
    }

    public void setIdentificationType(String identificationType) {
        this.identificationType = identificationType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getTown() {
        return town;
    }

    public void setTown(String town) {
        this.town = town;
    }

    public String getHouseAddress() {
        return houseAddress;
    }

    public void setHouseAddress(String houseAddress) {
        this.houseAddress = houseAddress;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

}
