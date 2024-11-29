<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalhes do Voo</title>
    <link rel="stylesheet" href="../admin/css/detalhes-voos.css">
</head>
<body>
<header>
    <div class="logo">
        <img src="/img/logo.png" alt="Logo">
    </div>
    <div class="menu">
        <ul>
            <li><a href="/home.jsp">Home</a></li>
            <li><a href="/about-us.jsp">Sobre</a></li>
            <li><a href="#">Contato</a></li>
            <li><a href="#">Ajuda</a></li>
        </ul>
    </div>
    <div class="admin-menu">
        <a href="#" class="login">Log in</a>
        <span class="menu-icon">Menu</span>
    </div>
</header>
    <main>
        <h1>Detalhes do voo</h1>
        <div class="details">
            <div class="detail-item">
                <strong>Voo</strong>
                <div class="detail-info">
                    <span><%= request.getAttribute("flight") != null ? request.getAttribute("flight") : "VVI - GRU - Rio de Janeiro" %></span> <!-- Exibe dados dinâmicos -->
                    <img src="https://img.icons8.com/material-outlined/24/000000/edit.png" alt="Editar" class="edit-icon">
                </div>
            </div>
            <div class="detail-item">
                <strong>Número do voo</strong>
                <div class="detail-info">
                    <span><%= request.getAttribute("flightNumber") != null ? request.getAttribute("flightNumber") : "007445" %></span> <!-- Exibe dados dinâmicos -->
                    <img src="https://img.icons8.com/material-outlined/24/000000/edit.png" alt="Editar" class="edit-icon">
                </div>
            </div>
            <div class="detail-item">
                <strong>Horário de partida</strong>
                <div class="detail-info">
                    <span><%= request.getAttribute("departureTime") != null ? request.getAttribute("departureTime") : "18h35" %></span> <!-- Exibe dados dinâmicos -->
                    <img src="https://img.icons8.com/material-outlined/24/000000/edit.png" alt="Editar" class="edit-icon">
                </div>
            </div>
            <div class="detail-item">
                <strong>Horário de chegada</strong>
                <div class="detail-info">
                    <span><%= request.getAttribute("arrivalTime") != null ? request.getAttribute("arrivalTime") : "22h35" %></span> <!-- Exibe dados dinâmicos -->
                    <img src="https://img.icons8.com/material-outlined/24/000000/edit.png" alt="Editar" class="edit-icon">
                </div>
            </div>
            <div class="detail-item">
                <strong>Preço</strong>
                <div class="detail-info">
                    <span><%= request.getAttribute("price") != null ? request.getAttribute("price") : "R$ 7.500" %></span> <!-- Exibe dados dinâmicos -->
                    <img src="https://img.icons8.com/material-outlined/24/000000/edit.png" alt="Editar" class="edit-icon">
                </div>
            </div>
            <div class="detail-item">
                <strong>Assentos disponíveis</strong>
                <div class="detail-info">
                    <span><%= request.getAttribute("availableSeats") != null ? request.getAttribute("availableSeats") : "14" %></span> <!-- Exibe dados dinâmicos -->
                    <img src="https://img.icons8.com/material-outlined/24/000000/edit.png" alt="Editar" class="edit-icon">
                </div>
            </div>
        </div>
    </main>
<div class="footer-menu">
        <ul>
            <li><a href="/about-us.jsp">Quem somos</a></li>
            <li><a href="#">Entrar</a></li>
            <li><a href="/home.jsp">Home</a></li>
        </ul>
        <div class="footer-copyright">
            <p>Todos os direitos reservados. Este site ou qualquer parte dele não pode ser reproduzido ou usado de
                forma
                alguma sem autorização expressa, por escrito, do autor ou editor, exceto pelo uso de citações breves
                em uma
                resenha de ebook.</p>
        </div>
    </div>
</body>
</html>
