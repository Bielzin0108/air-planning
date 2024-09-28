package br.com.airplanning.model;

import br.com.airplanning.enums.TypeCustomer;

import java.util.UUID;

public class Customer {
    private UUID id;
    private String name;
    private String phone;
    private String email;
    private String password;
    private String document;
    private TypeCustomer type;

    public Customer() {
    }

    public Customer(UUID id, String name, String phone, String email, String password, String document, TypeCustomer type) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.password = password;
        this.document = document;
        this.type = type;
    }

    public Customer(String name, String phone, String email, String password, String document, TypeCustomer type) {
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.password = password;
        this.document = document;
        this.type = type;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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

    public String getDocument() {
        return document;
    }

    public void setDocument(String document) {
        this.document = document;
    }

    public TypeCustomer getType() {
        return type;
    }

    public void setType(TypeCustomer type) {
        this.type = type;
    }
}
