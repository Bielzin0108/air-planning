package br.com.airplanning.servlet;

import br.com.airplanning.model.Flight;
import br.com.airplanning.repository.flight.FlightRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("user") != null) {
            FlightRepository flightRepository = new FlightRepository();

            List<Flight> allFlights = flightRepository.getAllFlights();
            req.setAttribute("flights", allFlights);
            System.out.println(allFlights);
            req.getRequestDispatcher("/home.jsp").forward(req, resp);
        } else {
            resp.sendRedirect("/login");
        }
    }
};
