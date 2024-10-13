package br.com.airplanning.model;
import java.util.UUID;
public class Seats {
    private UUID id;
    private int seatNumber;
    private boolean available;
    private UUID flightId;

    public Seats(UUID id, int seatNumber, boolean available, UUID flightId) {
        this.id = id;
        this.seatNumber = seatNumber;
        this.available = available;
        this.flightId = flightId;
    }

    public Seats(int seatNumber, boolean available, UUID flightId) {
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

    public UUID getFlightId() {
        return flightId;
    }

    public void setFlightId(UUID flightId) {
        this.flightId = flightId;
    }
}

