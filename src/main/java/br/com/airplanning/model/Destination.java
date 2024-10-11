package br.com.airplanning.model;

import java.util.UUID;

public class Destination {
    private UUID id;
    private String country;
    private String city;

    public Destination(UUID id, String country, String city) {
        this.id = id;
        this.country = country;
        this.city = city;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}

