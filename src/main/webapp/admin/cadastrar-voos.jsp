<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar um Voo</title>
    <link rel="stylesheet" href="/admin/css/cadastrar-voos.css">
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
            <li><a href="/contato.jsp">Contato</a></li>
            <li><a href="/admin/dashboard">Dashboard</a></li>
        </ul>
    </div>
    <div class="user-menu">
        <div class="user-icon">
            <img src="/img/user.png" alt="User Icon">
        </div>
        <span class="logout" onclick="window.location.href='/logout'">
            Logout
        </span>
        <span class="menu-icon" onclick="window.location.href='/booking'">
        Meus Bookings
    </span>
    </div>
</header>

<main>
    <h1>Cadastrar um voo</h1>
    <form class="flight-form" action="/cadastrar-voos" method="post">
        <div class="form-group">
            <label for="voo">Número do voo</label>
            <input name="flightNumber" id="voo" class="input-container" type="text"/>
        </div>
        <div class="form-group">
            <label for="partida">Horário de partida</label>
            <input id="partida" name="departureDateTime" class="input-container" type="datetime-local"/>
        </div>
        <div class="form-group">
            <label for="chegada">Horário de chegada</label>
            <input id="chegada" name="arrivalDateTime" class="input-container" type="datetime-local"/>
        </div>
        <div class="form-group">
            <label for="origem">Origem</label>
            <input id="origem" name="origin" class="input-container" type="text"/>
        </div>
        <div class="form-group">
            <label for="preco">Preço</label>
            <input id="preco" name="price" class="input-container" type="number"/>
        </div>
        <div class="form-group">
            <label for="destinationSelect">Selecione os destinos:</label>
            <select id="destinationSelect" name="destinationId" class="form-control">
                <c:forEach var="destination" items="${destinations}">
                    <option value="${destination.id}">
                            ${destination.city}, ${destination.country}
                    </option>
                </c:forEach>
            </select>
        </div>
        <button type="submit" class="submit-btn">Cadastrar</button>
    </form>
</main>

<footer>
    <div class="footer-menu">
        <ul>
            <li><a href="<%= request.getContextPath() %>/about-us.jsp">Quem somos</a></li>
            <li><a href="#">Entrar</a></li>
            <li><a href="<%= request.getContextPath() %>/home.jsp">Home</a></li>
        </ul>
        <div class="footer-copyright">
            <p>Todos os direitos reservados. Este site ou qualquer parte dele não pode ser reproduzido ou usado de
                forma alguma sem autorização expressa, por escrito, do autor ou editor, exceto pelo uso de citações
                breves
                em uma resenha de ebook.</p>
        </div>
    </div>
</footer>
</body>
</html>
