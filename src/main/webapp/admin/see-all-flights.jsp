<%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 11/27/2024
  Time: 11:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/admin/css/see-all-flights.css">
</head>
<body>

<header>
    <div class="logo">
        <img src="img/logo.png" alt="Logo">
    </div>
    <div class="menu">
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="/about-us.jsp">Sobre</a></li>
            <li><a href="#">Contato</a></li>
            <li><a href="#">Ajuda</a></li>
        </ul>
    </div>
    <div class="user-menu">
        <a href="#" class="login">Log in</a>
        <span class="menu-icon">Menu</span>
    </div>
</header>
<div class="flights-container">
    <h1>Visualizar todos os voos</h1>
    <div class="tabs">
        <button class="active-tab">Todos</button>
    </div>
    <table class="flights-table">
        <thead>
        <tr>
            <th>Voo</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>VVI - GRU - Rio de Janeiro</td>
            <td>
                <button class="details-button">Ver mais detalhes</button>
            </td>
            <td>
                <button class="delete-button">
                    <img src="/img/recycle-bin.png" alt="Recycle bin">
                </button>
            </td>
        </tr>
        <tr>
            <td>SCL - GRU - Bolivia</td>
            <td>
                <button class="details-button">Ver mais detalhes</button>
            </td>
            <td>
                <button class="delete-button">
                    <img src="/img/recycle-bin.png" alt="Recycle bin">
                </button>
            </td>
        </tr>
        <tr>
            <td>NYC - GRU - New York</td>
            <td>
                <button class="details-button">Ver mais detalhes</button>
            </td>
            <td>
                <button class="delete-button">
                    <img src="/img/recycle-bin.png" alt="Recycle bin">
                </button>
            </td>
        </tr>
        <tr>
            <td>CON - GRU - Minas Gerais</td>
            <td>
                <button class="details-button">Ver mais detalhes</button>
            </td>
            <td>
                <button class="delete-button">
                    <img src="/img/recycle-bin.png" alt="Recycle bin">
                </button>
            </td>
        </tr>
        </tbody>
    </table>
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
            <li><a href="#">Quem somos</a></li>
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
