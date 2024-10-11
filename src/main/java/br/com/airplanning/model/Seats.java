package br.com.airplanning.model;

import java.util.UUID;

public class Seats {
    private UUID id;
    private String seatNumber;
    private boolean available;
    private UUID flightId;

    public Seats(UUID id, String seatNumber, boolean available, UUID flightId) {
        this.id = id;
        this.seatNumber = seatNumber;
        this.available = available;
        this.flightId = flightId;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getSeatNumber() {
        return seatNumber;
    }

    public void setSeatNumber(String seatNumber) {
        this.seatNumber = seatNumber;
    }

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    public UUID getFlightId() {
        return flightId;
    }

    public void setFlightId(UUID flightId) {
        this.flightId = flightId;
    }
}

