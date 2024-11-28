package br.com.airplanning.servlet;

import br.com.airplanning.model.Destination;
import br.com.airplanning.model.Flight;
import br.com.airplanning.repository.destination.DestinationRepository;
import br.com.airplanning.repository.flight.FlightRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.UUID;

@WebServlet("/detalhes-voos")
public class FlightDetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UUID flightId = UUID.fromString(req.getParameter("flightId"));

        FlightRepository flightRepository = new FlightRepository();

        DestinationRepository destinationRepository = new DestinationRepository();

        Flight flight = flightRepository.getFlightById(flightId);

        Destination destination = destinationRepository.getAllDestinations().stream()
                .filter(d -> d.getId().equals(flight.getDestinationId()))
                .findFirst()
                .orElse(null);

        Integer countSeatsAvailable = flightRepository.countSeatsAvailableByFlightId(flightId);

        req.setAttribute("flight", flight);

        req.setAttribute("countSeats", countSeatsAvailable);

        req.setAttribute("destination", destination.getCountry());

        req.getRequestDispatcher("/admin/detalhes-voos.jsp").forward(req, resp);
    }
}
