<%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 11/28/2024
  Time: 5:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="css/checkout.css">
<head>
    <title>Checkout</title></head>
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
        <a href="#" class="login">Log in</a>
        <span class="menu-icon">Menu</span>
    </div>
</header>
<div class="checkout-container">
    <div class="checkout-header">
        <a href="/home.jsp" class="back-button">← Voltar</a>

        <h1>Checkout</h1>
    </div>

    <div class="checkout-content">
        <div class="flight-summary">
            <h2>Resumo do Voo</h2>
            <p><strong>Número do Voo:</strong> ${flight.flightNumber}</p>
            <p><strong>Origem:</strong> ${flight.origin}</p>
            <p><strong>Destino:</strong> ${destination}</p>
            <p><strong>Partida:</strong> ${flight.departureDateTime}</p>
            <p><strong>Chegada:</strong> ${flight.arrivalDateTime}</p>
            <p><strong>Preço:</strong> R$ ${flight.price}</p>
        </div>

        <div class="passenger-form">
            <h2>Detalhes do Passageiro</h2>
            <form>
                <label>Nome Completo:</label>
                <input type="text" value="${customer.name}" readonly>

                <label>Telefone:</label>
                <input type="tel" value="${customer.phone}" readonly>

                <label>E-mail:</label>
                <input type="email" value="${customer.email}" readonly>

                <label>CPF:</label>
                <input type="email" value="${customer.document}" readonly>


            </form>
            <div class="info-message">
                <span class="info-icon">ℹ️</span>
                <p>Os dados do passageiro foram preenchidos no momento da criação da conta na Air-Planning e não podem ser alterados. Caso queira atualizá-los, entre em contato com um dos nossos administradores.</p>
            </div>
        </div>

        <div class="payment-details">
            <h2>Pagamento</h2>
            <p>Preço: R$ ${flight.price}</p>
            <p>Taxas: R$ 20,00</p>
            <p><strong>Total:</strong> R$ ${flight.price + 20}</p>
            <button type="submit" class="confirm-button">Confirmar e Pagar</button>
        </div>
    </div>
</div>
<footer>
    <div class="footer-text">
        <p class="price-text">Preços de passagens aéreas por viajante e nossas estimativas mais baixas se baseiam
            nas
            tarifas mais recentes. Os preços de hotéis são calculados com base no preço mais barato por noite de um
            hotel
            de 4 estrelas para as datas selecionadas.</p> <br/>
        <p>Estas são as estimativas de preço mais baixas para passagens aéreas da classe Econômica para um viajante.
            Os
            preços são baseados nas tarifas mais recentes. Aviso de isenção de responsabilidade: alguns desses
            filtros são
            uma tecnologia experimental derivada do ChatGPT. Algumas respostas podem não ser verificadas ou
            confiáveis.
            Esta ferramenta se destina apenas para inspiração de viagem. Os viajantes devem consultar as orientações
            do
            governo ao planejar uma viagem.</p>
    </div>
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
