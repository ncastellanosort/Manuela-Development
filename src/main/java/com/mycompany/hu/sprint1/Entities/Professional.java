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
public class Professional implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int id;

    @Basic
    private String identificationType;
    private String identificationNumber;
    private String speciality;
    private String name;
    private String lastname;
    private String phoneNumber;
    private String department;
    private String town;
    private String houseAddress;
    private String professionalAddress;
    private String email;
    private String password;
    private String confirmPassword;
    private String description;

    public Professional() {
    }

    public Professional(int id, String identificationType, String identificationNumber, String speciality, String name, String lastname, String phoneNumber, String department, String town, String houseAddress, String professionalAddress, String email, String password, String confirmPassword, String description) {
        this.id = id;
        this.identificationType = identificationType;
        this.identificationNumber = identificationNumber;
        this.speciality = speciality;
        this.name = name;
        this.lastname = lastname;
        this.phoneNumber = phoneNumber;
        this.department = department;
        this.town = town;
        this.houseAddress = houseAddress;
        this.professionalAddress = professionalAddress;
        this.email = email;
        this.password = password;
        this.confirmPassword = confirmPassword;
        this.description = description;
    }

    public Professional(String identificationType, String identificationNumber, String speciality, String name, String lastname, String phoneNumber, String department, String town, String houseAddress, String professionalAddress, String email, String password, String confirmPassword, String description) {
        this.identificationType = identificationType;
        this.identificationNumber = identificationNumber;
        this.speciality = speciality;
        this.name = name;
        this.lastname = lastname;
        this.phoneNumber = phoneNumber;
        this.department = department;
        this.town = town;
        this.houseAddress = houseAddress;
        this.professionalAddress = professionalAddress;
        this.email = email;
        this.password = password;
        this.confirmPassword = confirmPassword;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIdentificationType() {
        return identificationType;
    }

    public void setIdentificationType(String identificationType) {
        this.identificationType = identificationType;
    }

    public String getIdentificationNumber() {
        return identificationNumber;
    }

    public void setIdentificationNumber(String identificationNumber) {
        this.identificationNumber = identificationNumber;
    }

    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
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

    public String getProfessionalAddress() {
        return professionalAddress;
    }

    public void setProfessionalAddress(String professionalAddress) {
        this.professionalAddress = professionalAddress;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
