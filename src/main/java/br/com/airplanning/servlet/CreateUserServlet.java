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

@WebServlet("/cadastro")
public class CreateUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("gerenciar-voos.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nome = req.getParameter("nome");
        String telefone = req.getParameter("telefone");
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");
        String confirmar_senha = req.getParameter("confirmar-senha");
        String cpf = req.getParameter("cpf");


        String senhaCriptografada = null;
        try {
            senhaCriptografada = Criptografia.converterParaMD5(senha);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }

        boolean confirmPassword = senha.equalsIgnoreCase(confirmar_senha);

        if (confirmPassword) {
            try {
                Customer customer = new Customer(nome, telefone, email, senhaCriptografada, cpf, TypeCustomer.CLIENTE);
                new CustomerRepository().createCustomer(customer);
                req.getSession().setAttribute("successMessage", "O usuário foi cadastrado com sucesso!");
                resp.sendRedirect("/login");
                return;


            } catch (Exception e) {
                req.setAttribute("fail", "Não foi possível realizar o cadastro!");
                req.getRequestDispatcher("gerenciar-voos.jsp").forward(req, resp);
                return;
            }

        }
        req.setAttribute("failpassword", "As senhas não são iguais!");
        req.getRequestDispatcher("gerenciar-voos.jsp").forward(req, resp);
    }


}
