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
<header>
    <div class="logo">
        <img src="/img/logo.png" alt="Logo">
    </div>
    <nav class="menu">
        <ul>
            <li><a href="/home.jsp">Home</a></li>
            <li><a href="/about-us.jsp">Sobre</a></li>
            <li><a href="/contato.jsp">Contato</a></li>
        </ul>
    </nav>
    <div class="user-menu">
        <div class="user-icon">
            <img src="/img/user.png" alt="User Icon">
        </div>
        <span class="logout" onclick="window.location.href='/logout'">Logout</span>
        <span class="menu-icon" onclick="window.location.href='/booking'">Meus Bookings</span>
    </div>
</header>

<main class="content">
    <article class="blog-post">
        <h1>Nova York: A Cidade Que Nunca Dorme</h1>
        <p class="intro">
            Nova York é um dos destinos mais icônicos do mundo, conhecido por sua cultura vibrante, monumentos
            históricos e uma energia que nunca para. Este guia reúne as principais atrações que tornam a "Big Apple"
            uma experiência inesquecível para qualquer viajante.
        </p>

        <section>
            <h2>Times Square</h2>
            <img src="/img/blog-ny.png" alt="Times Square">
            <p>
                O coração pulsante de Nova York, famoso por seus letreiros iluminados e teatros da Broadway. Caminhar
                por Times Square à noite é mergulhar em uma explosão de luzes e sons. Não perca a oportunidade de tirar
                fotos incríveis neste lugar que representa a essência da cidade.
            </p>
        </section>

        <section>
            <h2>Central Park</h2>
            <img src="/img/central-park.png" alt="Central Park">
            <p>
                Um oásis de tranquilidade em meio à agitação de Manhattan, o Central Park oferece paisagens incríveis,
                trilhas para caminhadas e opções para passeios de barco. É o local perfeito para um piquenique ou para
                apreciar o contraste entre a natureza e os arranha-céus ao redor.
            </p>
        </section>

        <section>
            <h2>Empire State Building</h2>
            <img src="/img/empire-state.png" alt="Empire State Building">
            <p>
                Suba até o observatório do Empire State Building e aprecie vistas panorâmicas de Nova York. Este
                arranha-céu, um dos mais famosos do mundo, é um ícone da arquitetura moderna e um ponto turístico
                imperdível.
            </p>
        </section>

        <section>
            <h2>Estátua da Liberdade</h2>
            <img src="/img/estatuadaliberdade.png" alt="Estátua da Liberdade">
            <p>
                A Estátua da Liberdade é mais do que um monumento; é um símbolo de liberdade e democracia. Localizada
                na Liberty Island, uma visita à estátua inclui a possibilidade de subir até sua coroa e explorar a Ellis
                Island, onde você poderá aprender mais sobre a história da imigração nos Estados Unidos.
            </p>
        </section>

        <section>
            <h2>Brooklyn Bridge</h2>
            <img src="/img/brooklyn-bridge.png" alt="Brooklyn Bridge">
            <p>
                A Brooklyn Bridge conecta Manhattan ao Brooklyn e é um dos melhores lugares para apreciar o skyline
                da cidade. Caminhe pela ponte ao entardecer para vistas espetaculares e fotos inesquecíveis.
            </p>
        </section>
    </article>
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
                forma alguma sem autorização expressa, por escrito, do autor ou editor, exceto pelo uso de citações breves
                em uma resenha de ebook.</p>
        </div>
    </div>
</footer>
</body>
</html>