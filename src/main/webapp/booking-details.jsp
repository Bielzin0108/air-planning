<!DOCTYPE html>
<html lang="pt-br">
<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalhes da Reserva</title>
    <link rel="stylesheet" href="css/booking-details.css">
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

<main class="details-container">
    <h1>Detalhes da Reserva</h1>

    <section class="summary-section">
        <div class="summary-box">
            <h2>Resumo do Voo</h2>
            <p><span>Número do Voo:</span> ${booking.flight.flightNumber}</p>
            <p><span>Origem:</span> ${booking.flight.origin}</p>
            <p><span>Destino:</span> ${booking.flight.destination.city}, ${booking.flight.destination.country}</p>
            <p><span>Data de Partida:</span> ${booking.flight.departureDateTime}</p>
            <p><span>Data de Chegada:</span> ${booking.flight.arrivalDateTime}</p>
            <p><span>Preço:</span> R$ ${booking.flight.price}</p>
        </div>

        <div class="summary-box">
            <h2>Informações do Passageiro</h2>
            <p><span>Nome:</span> ${customer.name}</p>
            <p><span>Telefone:</span> ${customer.phone}</p>
            <p><span>Email:</span> ${customer.email}</p>
            <p><span>CPF:</span> ${customer.document}</p>
        </div>
    </section>

    <section class="payment-section">
        <div class="payment-box">
            <h2>Pagamento</h2>
            <p><span>Preço do Voo:</span> R$ ${booking.flight.price}</p>
            <p><span>Taxas:</span> R$ 20,00</p>
            <p><strong>Total:</strong> R$ ${booking.flight.price + 20}</p>
        </div>
    </section>

    <div class="back-button-container">
        <a href="/booking" class="back-button">← Voltar para Minhas Reservas</a>
    </div>
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
                forma alguma sem autorização expressa, por escrito, do autor ou editor.</p>
        </div>
    </div>
</footer>
</body>
</html>
