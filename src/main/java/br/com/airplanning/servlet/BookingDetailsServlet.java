package br.com.airplanning.servlet;

import br.com.airplanning.model.Customer;
import br.com.airplanning.repository.booking.BookingRepository;
import br.com.airplanning.repository.customer.CustomerRepository;
import br.com.airplanning.repository.customer.dto.BookingDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.UUID;

@WebServlet("/booking-details")
public class BookingDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UUID bookingId = UUID.fromString(req.getParameter("bookingId"));

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

        BookingDTO bgk = null;

        try {

            bgk = new BookingRepository().get(bookingId);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        req.setAttribute("customer", customer);
        req.setAttribute("booking", bgk);
        System.out.println(customer.getName());

        req.getRequestDispatcher("/booking-details.jsp").forward(req, resp);
    }
}
