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

<main class="dashboard-container">
    <h1>Bem-vindo, Administrador</h1>
    <p>Escolha uma opção para gerenciar o sistema:</p>
    <div class="options">
        <button class="manage-btn" onclick="window.location.href='/admin/gerenciar-voos'">
            Gerenciar Voos
            <p>Cadastre ou liste os voos existentes no sistema.</p>
        </button>
        <button class="manage-btn" onclick="window.location.href='/admin/visualizar-voos'">
            Visualizar Todos os Voos
            <p>Veja a lista completa de voos cadastrados no sistema.</p>
        </button>
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
                forma
                alguma sem autorização expressa, por escrito, do autor ou editor, exceto pelo uso de citações breves
                em uma
                resenha de ebook.</p>
        </div>
    </div>
</footer>
</body>
</html>