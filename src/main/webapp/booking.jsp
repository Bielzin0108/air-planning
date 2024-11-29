<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ page contentType="text/html; charset=UTF-8" %>
    <title>Minhas Reservas</title>
    <link rel="stylesheet" href="css/booking.css">
</head>
<body>
<header>
    <div class="logo">
        <img src="/img/logo.png" alt="Logo">
    </div>
    <div class="menu">
        <ul>
            <li><a href="/home">Home</a></li>
            <li><a href="/about-us.jsp">Sobre</a></li>
            <li><a href="/contato.jsp">Contato</a></li>
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
    <section class="bookings-container">
        <h1>Minhas Reservas</h1>
        <div class="bookings-list">
            <c:forEach var="booking" items="${bookings}">
                <div class="booking-card">
                    <div class="booking-info">
                        <h2>${booking.flight.origin} → ${booking.flight.destination}</h2>
                        <p><strong>Número do Voo:</strong> ${booking.flight.flightNumber}</p>
                        <p><strong>Data:</strong> ${booking.flight.departureDateTime}</p>
                        <p><strong>Preço:</strong> R$ ${booking.flight.price}</p>
                    </div>
                    <div class="actions">
                        <a href="/booking-details?id=${booking.id}" class="details-button">Ver Detalhes</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </section>
</main>

<footer>
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
</footer>
</body>
</html>