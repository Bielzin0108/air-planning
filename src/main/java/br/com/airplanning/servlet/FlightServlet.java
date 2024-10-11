package br.com.airplanning.servlet;

import br.com.airplanning.model.Flight;
import br.com.airplanning.repository.flight.FlightRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.UUID;


@WebServlet("/voos")
public class FlightServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("flights.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            String flightNumber = req.getParameter("flightNumber");
            String departureDateTime = req.getParameter("departureDateTime");
            String arrivalDateTime = req.getParameter("arrivalDateTime");
            String origin = req.getParameter("origin");
            String destinationId = req.getParameter("destinationId");
            double price = Double.parseDouble(req.getParameter("price"));

            Flight flight = new Flight();
            flight.setFlightNumber(flightNumber);
            flight.setDepartureDateTime(LocalDateTime.parse(departureDateTime));
            flight.setArrivalDateTime(LocalDateTime.parse(arrivalDateTime));
            flight.setOrigin(origin);
            flight.setDestinationId(UUID.fromString(destinationId));
            flight.setPrice(price);

            FlightRepository flightRepository = new FlightRepository();
            flightRepository.createFlight(flight);

            resp.sendRedirect("/admin/flights.jsp");

        } catch (Exception e) {
            e.printStackTrace();

            req.setAttribute("errorMessage", "Erro ao cadastrar voo.");
            req.getRequestDispatcher("admin/flight-form.jsp").forward(req, resp);
        }

    }
}
