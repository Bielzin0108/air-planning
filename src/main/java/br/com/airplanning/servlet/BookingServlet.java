package br.com.airplanning.servlet;

import br.com.airplanning.model.Booking;
import br.com.airplanning.repository.booking.BookingRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@WebServlet("/booking")
public class BookingServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        UUID customerId = (UUID) session.getAttribute("customerId");
        List<Booking> allByUserId = new BookingRepository().getAllByUserId(customerId);
        req.setAttribute("bookings", allByUserId);
        req.getRequestDispatcher("/booking.jsp").forward(req, resp);

    }
}
