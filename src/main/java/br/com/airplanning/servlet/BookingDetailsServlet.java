package br.com.airplanning.servlet;

import br.com.airplanning.model.Customer;
import br.com.airplanning.repository.customer.CustomerRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.UUID;

@WebServlet("/booking-details")
public class BookingDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        UUID customerId = (UUID) session.getAttribute("customerId");

        if (customerId == null) {
            resp.sendRedirect("/login");
            return;
        }

        CustomerRepository customerRepository = new CustomerRepository();
        Customer customer = customerRepository.findCustomerById(customerId);
        
        if (customer == null) {
            resp.sendRedirect("/error.jsp");
            return;
        }

        req.setAttribute("customer", customer);

        req.getRequestDispatcher("/booking-details.jsp").forward(req, resp);
    }
}
