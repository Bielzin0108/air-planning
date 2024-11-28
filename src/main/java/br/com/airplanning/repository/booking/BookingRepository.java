package br.com.airplanning.repository.booking;

import br.com.airplanning.config.ConnectionPoolConfig;
import br.com.airplanning.model.Booking;
import br.com.airplanning.repository.customer.dto.BookingDTO;

import java.sql.*;
import java.util.UUID;

public class BookingRepository {

    public boolean save(Booking booking) {
        String SQL = "INSERT INTO BOOKING (ID, RESERVATION_DATE, CUSTOMER_ID, FLIGHT_ID, SEAT_ID) VALUES (?, ?, ?, ?, ?)";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setObject(1, booking.getId());
            preparedStatement.setTimestamp(2, Timestamp.valueOf(booking.getReservationDate()));
            preparedStatement.setObject(3, booking.getCustomerId());
            preparedStatement.setObject(4, booking.getFlightId());
            preparedStatement.setObject(5, booking.getSeatId());
            int rowsAffected = preparedStatement.executeUpdate();

            return rowsAffected > 0;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public BookingDTO get(UUID bookingId) throws SQLException {
        String SQL = "SELECT BOOKING.RESERVATION_DATE AS DATA_RESERVA, " +
                "FLIGHT.FLIGHT_NUMBER AS NUMERO_VOO, " +
                "FLIGHT.DEPARTURE_DATE_TIME AS HORA_SAIDA, " +
                "FLIGHT.ARRIVAL_DATE_TIME AS HORA_CHEGADA, " +
                "FLIGHT.ORIGIN AS ORIGEM, " +
                "FLIGHT.PRICE AS PRECO, " +
                "DESTINATION.COUNTRY AS PAIS, " +
                "DESTINATION.CITY AS CIDADE, " +
                "SEATS.SEAT_NUMBER AS NUMERO_ASSENTO, " +
                "SEATS.AVAILABLE AS DISPONIVEL " +
                "FROM BOOKING " +
                "JOIN FLIGHT ON BOOKING.FLIGHT_ID = FLIGHT.ID " +
                "JOIN DESTINATION ON DESTINATION.ID = FLIGHT.DESTINATION_ID " +
                "JOIN SEATS ON BOOKING.SEAT_ID = SEATS.ID " +
                "WHERE BOOKING.ID = ?";

        BookingDTO booking = null;

        try {
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setObject(1, bookingId);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                booking = new BookingDTO(
                        rs.getTimestamp("DATA_RESERVA").toLocalDateTime(),
                        rs.getString("NUMERO_VOO"),
                        rs.getTimestamp("HORA_SAIDA").toLocalDateTime(),
                        rs.getTimestamp("HORA_CHEGADA").toLocalDateTime(),
                        rs.getString("ORIGEM"),
                        rs.getDouble("PRECO"),
                        rs.getString("PAIS"),
                        rs.getString("CIDADE"),
                        rs.getInt("NUMERO_ASSENTO"),
                        rs.getBoolean("DISPONIVEL")
                );
            }
            connection.close();
            return booking;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
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

    public boolean delete(UUID bookingId) {
        String SQL = "SELECT * FROM BOOKING WHERE ID = ?";

        Booking booking = null;

        Connection connection = null;

        try {
            connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setObject(1, bookingId);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                booking = new Booking(rs.getObject("id", UUID.class), rs.getTimestamp("RESERVATION_DATE").toLocalDateTime(), rs.getObject("CUSTOMER_ID", UUID.class), rs.getObject("FLIGHT_ID", UUID.class), rs.getObject("SEAT_ID", UUID.class));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        if (booking == null) {
            return false;
        }

        SQL = "DELETE FROM BOOKING WHERE ID = ?";


        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setObject(1, bookingId);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        SQL = "UPDATE SEATS SET AVAILABLE = 'FALSE' WHERE ID = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setObject(1, booking.getSeatId());
            int rowsAffected = preparedStatement.executeUpdate();

            return rowsAffected > 0;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }

}