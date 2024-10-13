package br.com.airplanning.repository.booking;

import br.com.airplanning.config.ConnectionPoolConfig;
import br.com.airplanning.model.Booking;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Timestamp;

public class BookingRepository {

     // Retorna true se deu ou false se deu errado.
    public boolean save(Booking booking) {
        String SQL = "INSERT INTO BOOKING (ID, RESERVATION_DATE, CUSTOMER_ID, FLIGHT_ID, SEAT_ID) VALUES (?, ?, ?, ?, ?)";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setObject(1, booking.getId());
            preparedStatement.setTimestamp(2, Timestamp.valueOf(booking.getReservationDate()));
            preparedStatement.setObject(3, booking.getUserId());
            preparedStatement.setObject(4, booking.getFlightId());
            preparedStatement.setObject(5, booking.getSeatId());
            int rowsAffected = preparedStatement.executeUpdate();

            return rowsAffected > 0;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public void get() {
        // SELECT BOOKING.RESERVATION_DATE AS DATA_RESERVA,
        //FLIGHT.FLIGHT_NUMBER AS NUMERO_VOO,
        //FLIGHT.DEPARTURE_DATE_TIME AS HORA_SAIDA,
        //FLIGHT.ARRIVAL_DATE_TIME AS HORA_CHEGADA,
        //FLIGHT.ORIGIN AS ORIGEM,
        //FLIGHT.PRICE AS PRECO,
        //DESTINATION.COUNTRY AS PAIS,
        //DESTINATION.CITY AS CIDADE,
        //SEATS.SEAT_NUMBER AS NUMERO_ASSENTO,
        //SEATS.AVAILABLE AS DISPONIVEL
        //FROM BOOKING
        //JOIN FLIGHT ON BOOKING.FLIGHT_ID = FLIGHT.ID
        //JOIN DESTINATION ON DESTINATION.ID = FLIGHT.DESTINATION_ID
        //JOIN SEATS ON BOOKING.SEAT_ID = SEATS.ID
        //WHERE BOOKING.ID = '4d2a7913-632f-4986-ab0c-f6e390e2ce3c'
    }

}
