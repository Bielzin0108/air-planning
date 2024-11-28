package br.com.airplanning.config;

import br.com.airplanning.config.ConnectionPoolConfig;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.stream.Collectors;

@WebListener
public class DatabaseInitializer implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        try (Connection connection = ConnectionPoolConfig.getConnection()) {
            String script = readScriptFromFile("/script.sql");
            String insertDataScript = readScriptFromFile("/InsertData.sql");
            try (Statement stmt = connection.createStatement()) {
                stmt.execute(script);
                stmt.execute(insertDataScript);
            }
        } catch (SQLException | IOException e) {
            e.printStackTrace();
        }
    }

    private String readScriptFromFile(String path) throws IOException {
        InputStream is = getClass().getResourceAsStream(path);
        if (is == null) {
            throw new RuntimeException("Script file not found: " + path);
        }
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(is))) {
            return reader.lines().collect(Collectors.joining("\n"));
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
