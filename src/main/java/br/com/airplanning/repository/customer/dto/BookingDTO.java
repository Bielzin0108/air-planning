package br.com.airplanning.repository.customer.dto;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class BookingDTO {
    private LocalDateTime reservationDate;
    private String flightNumber;
    private LocalDateTime departureDateTime;
    private LocalDateTime arrivalDateTime;
    private String origin;
    private double price;
    private String country;
    private String city;
    private int seatNumber;
    private boolean available;

    public BookingDTO() {
    }

    public BookingDTO(LocalDateTime reservationDate, String flightNumber, LocalDateTime departureDateTime,
                      LocalDateTime arrivalDateTime, String origin, double price,
                      String country, String city, int seatNumber, boolean available) {
        this.reservationDate = reservationDate;
        this.flightNumber = flightNumber;
        this.departureDateTime = departureDateTime;
        this.arrivalDateTime = arrivalDateTime;
        this.origin = origin;
        this.price = price;
        this.country = country;
        this.city = city;
        this.seatNumber = seatNumber;
        this.available = available;
    }


    public LocalDateTime getReservationDate() {
        return reservationDate;
    }

    public void setReservationDate(LocalDateTime reservationDate) {
        this.reservationDate = reservationDate;
    }

    public String getFlightNumber() {
        return flightNumber;
    }

    public void setFlightNumber(String flightNumber) {
        this.flightNumber = flightNumber;
    }

    public LocalDateTime getDepartureDateTime() {
        return departureDateTime;
    }

    public void setDepartureDateTime(LocalDateTime departureDateTime) {
        this.departureDateTime = departureDateTime;
    }

    public LocalDateTime getArrivalDateTime() {
        return arrivalDateTime;
    }

    public void setArrivalDateTime(LocalDateTime arrivalDateTime) {
        this.arrivalDateTime = arrivalDateTime;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
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

    public int getSeatNumber() {
        return seatNumber;
    }

    public void setSeatNumber(int seatNumber) {
        this.seatNumber = seatNumber;
    }

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }
}

