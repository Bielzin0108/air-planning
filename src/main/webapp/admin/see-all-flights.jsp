<%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 11/27/2024
  Time: 11:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/admin/css/see-all-flights.css">
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
<div class="flights-container">
    <h1>Visualizar todos os voos</h1>
    <div class="tabs">
        <button class="active-tab">Todos</button>
    </div>
    <table class="flights-table">
        <thead>
        <tr>
            <th>Voo</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="flight" items="${flights}">
            <tr>
                <td>${flight.origin}</td>
                <td>
                    <button class="details-button"><a href="/admin/detalhes-voos?flightId=${flight.id}">Ver mais
                        detalhes</a></button>
                </td>
                <td>
                    <button class="delete-button">
                        <img src="/img/recycle-bin.png" alt="Recycle bin">
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>
<footer>
    <div class="footer-menu">
        <ul>
            <li><a href="#">Quem somos</a></li>
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
</footer>

</body>
</html>
