package br.com.airplanning.servlet;

import br.com.airplanning.enums.TypeCustomer;
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

@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("signup.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String nome = req.getParameter("nome");

        String numero = req.getParameter("numero");

        String email = req.getParameter("email");

        String senha = req.getParameter("senha");

        String cpf = req.getParameter("cpf");

        if (senha == null) {
            System.out.println("Senha não foi enviada no formulário.");
        } else {
            System.out.println("Senha enviada: " + senha);
        }


        String senhaCriptografada = null;
        try {
            senhaCriptografada = Criptografia.converterParaMD5(senha);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }

        try {
            Customer customer = new Customer(nome, numero, email, senhaCriptografada, cpf, TypeCustomer.CLIENTE);
            new CustomerRepository().createCustomer(customer);
            req.getSession().setAttribute("successMessage", "O usuário foi cadastrado com sucesso!");
            resp.sendRedirect("/login");
            return;


        } catch (Exception e) {
            req.setAttribute("fail", "Não foi possível realizar o cadastro!");
            req.getRequestDispatcher("cadastro.jsp").forward(req, resp);
            return;
        }
    }
}
