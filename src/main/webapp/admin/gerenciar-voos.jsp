<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gerenciar Voos</title>
    <link rel="stylesheet" href="/admin/css/gerenciar-voos.css">
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
            <li><a href="#">Ajuda</a></li>
        </ul>
    </div>
    <div class="user-menu">
        <a href="#" class="login">Log in</a>
        <span class="menu-icon">Menu</span>
    </div>
</header>

<main>
    <section class="buttons-container">
        <h1>Gerenciar Voos</h1>
        <div class="buttons">
            <button class="manage-btn" onclick="window.location.href='/cadastrar-voos'">Cadastrar Voo</button>
            <button class="manage-btn" onclick="window.location.href='/visualizar-voos'">Listar Voos</button>
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