package br.com.airplanning.servlet;

import br.com.airplanning.model.Customer;
import br.com.airplanning.repository.customer.CustomerRepository;
import br.com.airplanning.security.Criptografia;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");

        CustomerRepository customerRepository = new CustomerRepository();
        Customer customer = customerRepository.findCustomerByEmail(email);

        if (customer != null) {
            String senhaCriptografada = null;
            try {
                senhaCriptografada = Criptografia.converterParaMD5(senha);
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }

            // Comparar a senha criptografada com a senha do banco de dados
            if (customer.getPassword().equals(senhaCriptografada)) {
                // Salvar os dados do usuário na sessão
                req.getSession().setAttribute("user", customer);
                req.getSession().setAttribute("customerId", customer.getId());
                req.getSession().setAttribute("userType", customer.getType().toString());
                req.getSession().setAttribute("successMessage", "Login realizado com sucesso!");

                // Redirecionar com base no tipo do usuário
                if ("ADMIN".equals(customer.getType().toString())) {
                    resp.sendRedirect("/admin/dashboard"); // Página inicial do admin
                } else {
                    resp.sendRedirect("/home"); // Página inicial do cliente
                }
            } else {
                req.getSession().setAttribute("errorMessage", "Email ou senha incorretos!");
                resp.sendRedirect("/login");
            }
        } else {
            req.getSession().setAttribute("errorMessage", "Email ou senha incorretos!");
            resp.sendRedirect("/login");
        }
    }
}