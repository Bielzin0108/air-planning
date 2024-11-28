<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalhes do Voo</title>
    <link rel="stylesheet" href="../TelaAdm/style.css">
</head>
<body>
    <header>
        <div class="header-content">
            <span class="admin-text">Admin</span>
            <a href="<%= request.getContextPath() %>/logout" class="logout">Logout</a> <!-- Ação de logout -->
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
    <footer>
        <div>
            <a href="#">Quem somos</a>
            <a href="#">Entrar</a>
            <a href="#">Home</a>
        </div>
        <p>Todos os direitos reservados. Este site ou qualquer parte dele não pode ser reproduzido ou usado de forma alguma sem autorização expressa, por escrito, do autor ou editor.</p>
    </footer>
</body>
</html>
