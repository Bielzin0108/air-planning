<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ page contentType="text/html; charset=UTF-8" %>
    <title>Entre em Contato</title>
    <link rel="stylesheet" href="css/contato.css">
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
        <a href="#" class="login">Log in</a>
        <span class="menu-icon">Menu</span>
    </div>
</header>
<main>
    <div class="container">
        <div class="form-box">
            <h1>Entre em Contato Conosco</h1>
            <form action="processForm.jsp" method="post">
                <input type="text" id="nome" name="nome" placeholder="Digite seu nome" required>
                <input type="tel" id="telefone" name="telefone" placeholder="Digite seu telefone" required>
                <textarea id="comentario" name="comentario" rows="5" placeholder="Escreva aqui..." required></textarea>
                <button type="submit">Enviar</button>
            </form>
        </div>

        <div class="footer">
            <div class="contact-info">
                <img src="img/mail.png" alt="Email">
                <p>emailairplanning@email.com</p>
            </div>
            <div class="contact-info">
                <img src="img/telephone.png" alt="Telefone">
                <p>0800 123 456</p>
            </div>
            <div class="contact-info">
                <img src="img/endereco.png" alt="Endereço">
                <p>Rua Senac Santo Amaro<br>Turma 3ND</p>
            </div>
        </div>
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
