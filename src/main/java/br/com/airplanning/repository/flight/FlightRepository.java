package br.com.airplanning.repository.flight;

import br.com.airplanning.config.ConnectionPoolConfig;
import br.com.airplanning.model.Flight;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class FlightRepository {

    public void createFlight(Flight flight) {
        String SQL = "INSERT INTO FLIGHT (FLIGHT_NUMBER, DEPARTURE_DATE_TIME, ARRIVAL_DATE_TIME, ORIGIN, PRICE, DESTINATION_ID) VALUES (?, ?, ?, ?, ?, ?)";

        try {
            Connection con = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            preparedStatement.setString(1, flight.getFlightNumber());
            preparedStatement.setTimestamp(2, Timestamp.valueOf(flight.getDepartureDateTime()));
            preparedStatement.setTimestamp(3, Timestamp.valueOf(flight.getArrivalDateTime()));
            preparedStatement.setString(4, flight.getOrigin());
            preparedStatement.setDouble(5, flight.getPrice());
            preparedStatement.setString(6, String.valueOf(flight.getDestinationId()));
            preparedStatement.execute();


            con.close();
        } catch (Exception e) {
            System.out.println("A criação do voo não deu certo!");
            e.printStackTrace();

        }
    }

    public Flight getFlightById(UUID flightId) {
        String SQL = "SELECT * FROM FLIGHT WHERE ID = ?";
        Flight flight = null;

        try {
            Connection con = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            preparedStatement.setString(1, String.valueOf(flightId));
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                String flightNumber = rs.getString("FLIGHT_NUMBER");
                Timestamp departureDateTime = rs.getTimestamp("DEPARTURE_DATE_TIME");
                Timestamp arrivalDateTime = rs.getTimestamp("ARRIVAL_DATE_TIME");
                String origin = rs.getString("ORIGIN");
                double price = rs.getDouble("PRICE");
                UUID destinationId = rs.getObject("DESTINATION_ID", UUID.class);
                UUID id = rs.getObject("ID", UUID.class);

                flight = new Flight(id, flightNumber, departureDateTime.toLocalDateTime(), arrivalDateTime.toLocalDateTime(), origin, price, destinationId);
            }
        } catch (Exception e) {
            System.out.println("A criação do voo não deu certo: " + e.getMessage());
            e.printStackTrace();
        }

        return flight;
    }

    public List<Flight> getAllFlights() {
        String SQL = "SELECT * FROM FLIGHT";
        List<Flight> flights = new ArrayList<>();

        try {
            Connection con = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String flightNumber = rs.getString("FLIGHT_NUMBER");
                Timestamp departureDateTime = rs.getTimestamp("DEPARTURE_DATE_TIME");
                Timestamp arrivalDateTime = rs.getTimestamp("ARRIVAL_DATE_TIME");
                String origin = rs.getString("ORIGIN");
                double price = rs.getDouble("PRICE");
                UUID id = rs.getObject("ID", UUID.class);
                UUID destinationId = rs.getObject("DESTINATION_ID", UUID.class);

                Flight flight = new Flight(id, flightNumber, departureDateTime.toLocalDateTime(), arrivalDateTime.toLocalDateTime(), origin, price, destinationId);
                flights.add(flight);
            }

            con.close();

        } catch (Exception e) {
            System.out.println("Não foi possível listar os voos! " + e.getMessage());
            e.printStackTrace();
        }

        return flights;
    }

    public boolean deleteFlight(UUID flightId) {
        String SQL = "DELETE FROM FLIGHT WHERE ID = ?";
        boolean isDeleted = false;

        try {
            Connection con = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            preparedStatement.setObject(1, flightId);
            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
                isDeleted = true;
            }

            con.close();


        } catch (Exception e) {
            System.out.println("Não foi possível remover o voo! " + e.getMessage());
            e.printStackTrace();
        }
        return isDeleted;
    }


}
