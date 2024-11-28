package br.com.airplanning.repository.flight;

import br.com.airplanning.config.ConnectionPoolConfig;
import br.com.airplanning.dto.FlightFilterDto;
import br.com.airplanning.model.Flight;
import br.com.airplanning.model.Seats;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class FlightRepository {

    public void createFlight(Flight flight) {
        String SQL = "INSERT INTO FLIGHT (ID, FLIGHT_NUMBER, DEPARTURE_DATE_TIME, ARRIVAL_DATE_TIME, ORIGIN, PRICE, DESTINATION_ID) VALUES (?, ?, ?, ?, ?, ?, ?)";

        UUID id = UUID.randomUUID();
        try {
            Connection con = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            preparedStatement.setString(1, id.toString());
            preparedStatement.setString(2, flight.getFlightNumber());
            preparedStatement.setTimestamp(3, Timestamp.valueOf(flight.getDepartureDateTime()));
            preparedStatement.setTimestamp(4, Timestamp.valueOf(flight.getArrivalDateTime()));
            preparedStatement.setString(5, flight.getOrigin());
            preparedStatement.setDouble(6, flight.getPrice());
            preparedStatement.setString(7, String.valueOf(flight.getDestinationId()));
            preparedStatement.execute();


            con.close();
        } catch (Exception e) {
            System.out.println("A criação do voo não deu certo!");
            e.printStackTrace();

        }

        createSeatsToFlight(id);
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
            return flight;
        } catch (Exception e) {
            System.out.println("A criação do voo não deu certo: " + e.getMessage());
            throw new RuntimeException(e);
        }
    }

    public List<FlightFilterDto> getFlightByFilterUnique(String origin, String destinationCity, String destinationCountry, LocalDate departureDate) {
        LocalDateTime departureDateTimeMin = departureDate.atStartOfDay();
        LocalDateTime departureDateTimeMax = departureDate.atTime(LocalTime.MAX);

        String sql = """
                  SELECT
                      FLIGHT.ID,
                      FLIGHT.FLIGHT_NUMBER,
                      FLIGHT.DEPARTURE_DATE_TIME,
                      FLIGHT.ORIGIN,
                      FLIGHT.PRICE,
                      FLIGHT.DESTINATION_ID,
                      DESTINATION.COUNTRY,
                      DESTINATION.CITY
                  FROM FLIGHT
                  INNER JOIN DESTINATION ON FLIGHT.DESTINATION_ID = DESTINATION.ID
                  WHERE FLIGHT.ORIGIN LIKE ?
                    AND (DESTINATION.CITY LIKE ? OR DESTINATION.COUNTRY LIKE ?)
                    AND FLIGHT.DEPARTURE_DATE_TIME BETWEEN ? AND ?
                  """;

        List<FlightFilterDto> flightsFiltered = new ArrayList<>();

        try {
            // Conexão com o banco de dados
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            // Configuração dos parâmetros da consulta
            preparedStatement.setString(1, origin);
            preparedStatement.setString(2, destinationCity);
            preparedStatement.setString(3, destinationCountry);
            preparedStatement.setTimestamp(4, Timestamp.valueOf(departureDateTimeMin));
            preparedStatement.setTimestamp(5, Timestamp.valueOf(departureDateTimeMax));

            // Execução da consulta
            ResultSet resultSet = preparedStatement.executeQuery();

            // Processamento dos resultados
            while (resultSet.next()) {
                FlightFilterDto flightFilterDto = FlightFilterDto.builder()
                        .id(resultSet.getObject("ID", UUID.class))
                        .flightNumber(resultSet.getString("FLIGHT_NUMBER"))
                        .departureDateTime(resultSet.getTimestamp("DEPARTURE_DATE_TIME").toLocalDateTime())
                        .origin(resultSet.getString("ORIGIN"))
                        .destinationId(resultSet.getObject("DESTINATION_ID", UUID.class))
                        .country(resultSet.getString("COUNTRY"))
                        .city(resultSet.getString("CITY"))
                        .build();

                flightsFiltered.add(flightFilterDto);
            }

            return flightsFiltered;
        } catch (Exception e) {
            System.out.println("Falha em buscar viagem pelo filtro");
            throw new RuntimeException(e);
        }
    }

    public List<FlightFilterDto> getFlightByFilterDepartureAndArrival(String origin, String destinationCity, String destinationCountry, LocalDate departureDate, LocalDate arrivalDate) {
        LocalDateTime departureDateTimeMin = departureDate.atStartOfDay();

        LocalDateTime departureDateTimeMax = departureDate.atTime(LocalTime.MAX);

        LocalDateTime arrivalDateTimeMin = arrivalDate.atStartOfDay();

        LocalDateTime arrivalDateTimeMax = arrivalDate.atTime(LocalTime.MAX);

        String sql = """
                          SELECT
                                     FLIGHT.ID,
                                     FLIGHT.FLIGHT_NUMBER,
                                     FLIGHT.DEPARTURE_DATE_TIME,
                                     FLIGHT.ARRIVAL_DATE_TIME,
                                     FLIGHT.ORIGIN,
                                     FLIGHT.PRICE,
                                     FLIGHT.DESTINATION_ID,
                                     DESTINATION.COUNTRY,
                                     DESTINATION.CITY
                                     FROM FLIGHT
                          INNER JOIN DESTINATION ON FLIGHT.DESTINATION_ID = DESTINATION.ID
                          WHERE FLIGHT.ORIGIN LIKE ?
                          AND (DESTINATION.CITY LIKE ? OR DESTINATION.COUNTRY LIKE ?)
                          AND FLIGHT.DEPARTURE_DATE_TIME BETWEEN ? AND ?
                          AND FLIGHT.ARRIVAL_DATE_TIME BETWEEN ? AND ?
                """;

        List<FlightFilterDto> flightsFiltered = new ArrayList<>();

        try {
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, origin);
            preparedStatement.setString(2, destinationCity);
            preparedStatement.setString(3, destinationCountry);
            preparedStatement.setTimestamp(4, Timestamp.valueOf(departureDateTimeMin));
            preparedStatement.setTimestamp(5, Timestamp.valueOf(departureDateTimeMax));
            preparedStatement.setTimestamp(6, Timestamp.valueOf(arrivalDateTimeMin));
            preparedStatement.setTimestamp(7, Timestamp.valueOf(arrivalDateTimeMax));
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                FlightFilterDto flightFilterDto = FlightFilterDto.builder()
                        .id(resultSet.getObject("ID", UUID.class))
                        .flightNumber(resultSet.getString("FLIGHT_NUMBER"))
                        .departureDateTime(resultSet.getTimestamp("DEPARTURE_DATE_TIME").toLocalDateTime())
                        .arrivalDateTime(resultSet.getTimestamp("ARRIVAL_DATE_TIME").toLocalDateTime())
                        .origin(resultSet.getString("ORIGIN"))
                        .destinationId(resultSet.getObject("DESTINATION_ID", UUID.class))
                        .country(resultSet.getString("COUNTRY"))
                        .city(resultSet.getString("CITY"))
                        .build();

                flightsFiltered.add(flightFilterDto);
            }

            return flightsFiltered;
        } catch (Exception e) {
            System.out.println("Falha em buscar viagem pelo filtro");
            throw new RuntimeException(e);
        }
    }

    public Integer countSeatsAvailableByFlightId(UUID flightId) {
        String SQL = "SELECT COUNT(*) FROM FLIGHT INNER JOIN SEATS ON FLIGHT.ID = SEATS.FLIGHT_ID WHERE FLIGHT.ID = ? AND SEATS.AVAILABLE = ?";
        try {
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, String.valueOf(flightId));
            preparedStatement.setBoolean(2, true);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                return resultSet.getInt(1);
            }

            return 0;
        } catch (Exception e) {
            System.out.println("A busca pela contagem dos assentos disponiveis nao deu certo: " + e.getMessage());
            throw new RuntimeException(e);
        }
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


    private void createSeatsToFlight(UUID flightId) {
        String SQL = "INSERT INTO SEATS (SEAT_NUMBER, AVAILABLE, FLIGHT_ID) VALUES (?, ?, ?)";
        List<Seats> seats = loadSeatsToFlight(flightId);

        try {
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            for (Seats seat : seats) {
                preparedStatement.setInt(1, seat.getSeatNumber());
                preparedStatement.setBoolean(2, seat.isAvailable());
                preparedStatement.setObject(3, seat.getFlightId());
                preparedStatement.addBatch();
            }

            preparedStatement.executeBatch();
            connection.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private List<Seats> loadSeatsToFlight(UUID flightId) {
        List<Seats> seatsList = new ArrayList<>();

        for (int i = 1; i <= 30; i++) {
            seatsList.add(new Seats(i, true, flightId));
        }

        return seatsList;
    }

}
