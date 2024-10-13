package br.com.airplanning.model;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.UUID;

public class Booking {
    private UUID id;
    private LocalDateTime reservationDate;
    private UUID customerId;
    private UUID flightId;
    private UUID seatId;

    public Booking(UUID id, LocalDateTime reservationDate, UUID customerId, UUID flightId, UUID seatId) {
        this.id = id;
        this.reservationDate = reservationDate;
        this.customerId = customerId;
        this.flightId = flightId;
        this.seatId = seatId;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public LocalDateTime getReservationDate() {
        return reservationDate;
    }

    public void setReservationDate(LocalDateTime reservationDate) {
        this.reservationDate = reservationDate;
    }

    public UUID getCustomerId() {
        return customerId;
    }

    public void setCustomerId(UUID customerId) {
        this.customerId = customerId;
    }

    public UUID getFlightId() {
        return flightId;
    }

    public void setFlightId(UUID flightId) {
        this.flightId = flightId;
    }

    public UUID getSeatId() {
        return seatId;
    }

    public void setSeatId(UUID seatId) {
        this.seatId = seatId;
    }
}

