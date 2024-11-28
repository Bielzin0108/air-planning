<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalhes do Voo</title>
    <link rel="stylesheet" href="/admin/css/detalhes-voos.css">
</head>
<body>
<header>
    <div class="container">
        <div class="admin-info">
            <span>Admin</span>
        </div>
        <div class="nav-links">
            <a href="#">Logout</a>
        </div>
    </div>
</header>
<main class="container">
    <h1>Detalhes do voo</h1>
    <div class="details-box">
        <div class="detail-item">
            <span class="label">Voo</span>
            <span class="value">
            <c:out value="${destination}" default="VVI - GRU - Rio de Janeiro" />
        </span>
        </div>
        <div class="detail-item">
            <span class="label">Número do voo</span>
            <span class="value">
            <c:out value="${flight.flightNumber}" default="007445" />
        </span>
        </div>
        <div class="detail-item">
            <span class="label">Horário de partida</span>
            <span class="value">
            <c:out value="${flight.departureDateTime}" default="18h35" />
        </span>
        </div>
        <div class="detail-item">
            <span class="label">Horário de chegada</span>
            <span class="value">
            <c:out value="${flight.arrivalDateTime}" default="22h35" />
        </span>
        </div>
        <div class="detail-item">
            <span class="label">Preço</span>
            <span class="value">R$
            <c:out value="${flight.price}" default="7.500" />
        </span>
        </div>
        <div class="detail-item">
            <span class="label">Assentos disponíveis</span>
            <span class="value">
            <c:out value="${countSeats}" default="14" />
        </span>
        </div>
    </div>
</main>
<footer>
    <div class="footer-menu">
        <ul>
            <li><a href="#">Quem somos</a></li>
            <li><a href="#">Entrar</a></li>
            <li><a href="#">Entrar</a></li>
            <li><a href="#">Home</a></li>
        </ul>
    </div>
    <div class="footer-copyright">
        <p>Todos os direitos reservados. Este site ou qualquer parte dele não pode ser reproduzido ou usado de forma alguma sem autorização expressa, por escrito, do autor ou editor, exceto pelo uso de citações breves em uma resenha de ebook.</p>
    </div>
</footer>
</body>
</html>
