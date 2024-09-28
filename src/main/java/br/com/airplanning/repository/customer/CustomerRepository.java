package br.com.airplanning.repository.customer;

import br.com.airplanning.config.ConnectionPoolConfig;
import br.com.airplanning.enums.TypeCustomer;
import br.com.airplanning.model.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.UUID;

public class CustomerRepository {

    public void createCustomer(Customer customer) {
        String SQL = "INSERT INTO CUSTOMER (NAME, PHONE, EMAIL, PASSWORD, DOCUMENT, TYPE) VALUES (?, ?, ?, ?, ?, ?)";

        try {
            Connection con = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            preparedStatement.setString(1, customer.getName());
            preparedStatement.setString(2, customer.getPhone());
            preparedStatement.setString(3, customer.getEmail());
            preparedStatement.setString(4, customer.getPassword());
            preparedStatement.setString(5, customer.getDocument());
            preparedStatement.setString(6, customer.getType().toString());
            preparedStatement.execute();

            con.close();

        }catch (Exception e) {
            System.out.println("A criação do customer não deu certo!");
        }
    }

    public Customer findCustomerByEmail(String email) {
        String SQL = "SELECT * FROM CUSTOMER WHERE EMAIL = ?";
        Customer customer = null;

        try {
            Connection con = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            preparedStatement.setString(1, email);
            ResultSet rs = preparedStatement.executeQuery();


            // Verifica se há resultados na consulta SQL. Se houver, pega esses resultados para criar o objeto customer.
            // Se não houver resultados, retorna null, indicando que nenhum cliente foi encontrado
            if (rs.next()) {
                String name = rs.getString("NAME");
                String phone = rs.getString("PHONE");
                String password = rs.getString("PASSWORD");
                String document = rs.getString("DOCUMENT");
                TypeCustomer type = TypeCustomer.valueOf(rs.getString("TYPE"));
                UUID id = UUID.fromString(rs.getObject("ID").toString());
                customer = new Customer(id, name, phone, email, password, document, type);
            }

            con.close();

        } catch (Exception e) {
            System.out.println("A busca do cliente não deu certo!");
        }

        return customer;

    }
}
