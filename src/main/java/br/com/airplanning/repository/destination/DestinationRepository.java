package br.com.airplanning.repository.destination;

import br.com.airplanning.config.ConnectionPoolConfig;
import br.com.airplanning.model.Destination;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class DestinationRepository {

    public void createDestination(Destination destination) {
        String SQL = "INSERT INTO DESTINATION (COUNTRY, CITY) VALUES (?, ?)";

        try {
            Connection con = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            preparedStatement.setString(1, destination.getCountry());
            preparedStatement.setString(2, destination.getCity());
            preparedStatement.execute();

            con.close();

        } catch (Exception e) {
            System.out.println("Não foi possível criar um destino!");
            e.printStackTrace();
        }
    }

    public boolean deleteDestination(UUID destinationId) {
        String SQL = "DELETE FROM DESTINATION WHERE ID = ?";

        try {
            Connection con = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            preparedStatement.setObject(1, destinationId);
            int rowsAffected = preparedStatement.executeUpdate();

            con.close();

            return rowsAffected > 0;
        } catch (Exception e) {
            System.out.println("Não foi possível deletar o destino!");
            return false;
        }

    }

    public List<Destination> getAllDestinationsByFilter(String country, String city) {
        String SQL = "SELECT * FROM DESTINATION WHERE COUNTRY LIKE ? OR CITY LIKE ?";
        List<Destination> destinations = new ArrayList<>();

        try {
            Connection con = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            preparedStatement.setString(1, "%" + country + "%");
            preparedStatement.setString(2, "%" + city + "%");
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String countryId = rs.getString("COUNTRY");
                String cityId = rs.getString("CITY");
                UUID id = rs.getObject("ID", UUID.class);

                Destination destination = new Destination(id, countryId, cityId);
                destinations.add(destination);
            }
            con.close();
        } catch (Exception e) {
            System.out.println("Não foi possível buscar os destinos pelo filtro!");
            throw new RuntimeException(e);
        }

        return destinations;
    }

    public List<Destination> getAllDestinations() {
        String SQL = "SELECT * FROM DESTINATION";
        List<Destination> destinations = new ArrayList<>();

        try {
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Destination destination = new Destination(UUID.fromString(resultSet.getString("ID")),
                        resultSet.getString("COUNTRY"),
                        resultSet.getString("CITY"));

                destinations.add(destination);
            }
            connection.close();

        } catch (Exception e) {
            System.out.println("Não foi possível buscar os destinos");
            throw new RuntimeException(e);
        }

        return destinations;
    }

}
