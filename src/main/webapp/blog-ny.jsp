<%--
  Created by IntelliJ IDEA.
  User: Administrador
  Date: 25/11/2024
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Guia para Turistas em Nova York</title>
    <link rel="stylesheet" href="css/blog-ny.css">
</head>
<body>
<header class="header">
    <div class="container">
        <h1>Guia para Turistas em Nova York</h1>
        <nav class="nav">
            <a href="<%= request.getContextPath() %>/admin" class="nav-link">Admin</a>
            <a href="<%= request.getContextPath() %>/logout" class="nav-link">Logout</a>
        </nav>
    </div>
</header>
<main class="content">
    <section class="intro">
        <h2>Guia para Turistas em Nova York: O Que Fazer e Cuidados Importantes</h2>
        <p>Nova York é uma das cidades mais emocionantes do mundo, com opções infinitas para explorar. Este guia oferece dicas das melhores atividades, lugares para se hospedar e cuidados a tomar durante sua visita à "Big Apple".</p>
    </section>

    <section class="attractions">
        <h3>Melhores Atrações e Atividades em Nova York</h3>
        <div class="attraction-list">
            <div class="text">
                <ul>
                    <li><strong>Times Square:</strong> O coração vibrante da cidade.</li>
                    <li><strong>Central Park:</strong> Ideal para caminhadas e relaxamento.</li>
                    <li><strong>Museus:</strong> MET, MoMA e Museu de História Natural.</li>
                    <li><strong>Estátua da Liberdade:</strong> Visite a coroa e a Ellis Island.</li>
                    <li><strong>Brooklyn Bridge:</strong> Caminhe e explore o Dumbo.</li>
                </ul>
            </div>
            <div class="image1">
                <img src="<%= request.getContextPath() %>/img/estatuadaliberdade.png" alt="Estátua da Liberdade">

            </div>
            <div class="image2"
            <img src="<%= request.getContextPath() %>/img/broadway.png" alt="Times Square">
        </div>
    </section>

    <section class="safety">
        <h3>Cuidados e Dicas de Segurança</h3>
        <ul>
            <li>Compre ingressos em sites oficiais para evitar golpes.</li>
            <li>Use táxis oficiais ou aplicativos como Uber e Lyft.</li>
            <li>Evite carregar objetos de valor em locais movimentados.</li>
            <li>Planeje seu itinerário para economizar tempo e dinheiro.</li>
        </ul>
    </section>
</main>
</body>
</html>
