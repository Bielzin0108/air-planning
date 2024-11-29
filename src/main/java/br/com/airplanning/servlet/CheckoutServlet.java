package br.com.airplanning.servlet;

import br.com.airplanning.model.Customer;
import br.com.airplanning.model.Flight;
import br.com.airplanning.repository.customer.CustomerRepository;
import br.com.airplanning.repository.flight.FlightRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.UUID;

@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        UUID customerId = (UUID) session.getAttribute("customerId");


        if (customerId == null) {
            resp.sendRedirect("/login");
            return;
        }


        String flightIdParam = req.getParameter("flightId");
        if (flightIdParam == null || flightIdParam.isEmpty()) {
            req.setAttribute("errorMessage", "Nenhum voo foi selecionado.");
            req.getRequestDispatcher("/error.jsp").forward(req, resp);
            return;
        }

        CustomerRepository customerRepository = new CustomerRepository();
        Customer customer = customerRepository.findCustomerById(customerId);

        req.setAttribute("customer", customer);

        FlightRepository flightRepository = new FlightRepository();
        Flight flight = flightRepository.getFlightById(UUID.fromString(flightIdParam));
        req.setAttribute("flight", flight);

        req.getRequestDispatcher("/checkout.jsp").forward(req, resp);
    }
}

