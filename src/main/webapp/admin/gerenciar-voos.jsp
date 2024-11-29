<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gerenciar Voos</title>
    <link rel="stylesheet" href="/admin/css/gerenciar-voos.css">
</head>
<body>
<header>
    <div class="logo">
        <img src="<%= request.getContextPath() %>../img/logo.png" alt="Logo">
    </div>
    <div class="menu">
        <ul>
            <li><a href="<%= request.getContextPath() %>/home.jsp">Home</a></li>
            <li><a href="<%= request.getContextPath() %>/about-us.jsp">Sobre</a></li>
            <li><a href="/contato.jsp">Contato</a></li>
            <li><a href="#">Ajuda</a></li>
        </ul>
    </div>
    <div class="admin-menu">
        <a href="#" class="login">Log in</a>
        <span class="menu-icon">Menu</span>
    </div>
</header>
<div>
    <div class="buttons">
        <button><a href="/admin/cadastrar-voos">Cadastrar Voo</a></button>
        <button><a href="/visualizar-voos">Listar Voo</a></button>
    </div>
</div>

<footer>
    <div class="footer-text">
    </div>
    <div class="footer-menu">
        <ul>
            <li><a href="<%= request.getContextPath() %>/about-us.jsp">Quem somos</a></li>
            <li><a href="#">Entrar</a></li>
            <li><a href="<%= request.getContextPath() %>/home.jsp">Home</a></li>
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
