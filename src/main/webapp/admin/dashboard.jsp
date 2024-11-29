<%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 11/29/2024
  Time: 12:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard Administrativa</title>
    <link rel="stylesheet" href="/admin/css/dashboard.css">
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
            <li><a href="/logout">Sair</a></li>
        </ul>
    </div>
</header>

<main class="dashboard-container">
    <h1>Bem-vindo, Administrador</h1>
    <p>Escolha uma opção para gerenciar o sistema:</p>
    <div class="options">
        <button class="option-btn">
            <a href="/admin/gerenciar-voos">Gerenciar Voos</a>
            <p>Adicione, edite ou exclua voos disponíveis no sistema.</p>
        </button>
        <button class="option-btn">
            <a href="/admin/visualizar-reservas">Visualizar Reservas</a>
            <p>Confira e gerencie todas as reservas feitas pelos clientes.</p>
        </button>
        <button class="option-btn">
            <a href="/admin/gerenciar-clientes">Gerenciar Clientes</a>
            <p>Visualize e gerencie os dados dos clientes registrados.</p>
        </button>
        <!-- Adicione mais botões conforme necessário -->
    </div>
</main>

<footer>
    <p>&copy; 2024 Air Planning. Todos os direitos reservados.</p>
</footer>
</body>
</html>