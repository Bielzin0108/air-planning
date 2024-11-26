<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalhes do Voo</title>
    <link rel="stylesheet" href="css/detalhes-voos.css">
</head>
<body>
    <header>
        <div class="container">
            <div class="admin-info">
                <span>Admin</span>
            </div>
            <div class="nav-links">
                <a href="#">Logout</a>
            </div>
        </div>
    </header>
    <main class="container">
        <h1>Detalhes do voo</h1>
        <div class="details-box">
            <div class="detail-item">
                <span class="label">Voo</span>
                <span class="value"><%= request.getAttribute("vooDestino") != null ? request.getAttribute("vooDestino") : "VVI - GRU - Rio de Janeiro" %></span>
            </div>
            <div class="detail-item">
                <span class="label">Número do voo</span>
                <span class="value"><%= request.getAttribute("numeroVoo") != null ? request.getAttribute("numeroVoo") : "007445" %></span>
            </div>
            <div class="detail-item">
                <span class="label">Horário de partida</span>
                <span class="value"><%= request.getAttribute("horaPartida") != null ? request.getAttribute("horaPartida") : "18h35" %></span>
            </div>
            <div class="detail-item">
                <span class="label">Horário de chegada</span>
                <span class="value"><%= request.getAttribute("horaChegada") != null ? request.getAttribute("horaChegada") : "22h35" %></span>
            </div>
            <div class="detail-item">
                <span class="label">Preço</span>
                <span class="value">R$ <%= request.getAttribute("preco") != null ? request.getAttribute("preco") : "7.500" %></span>
            </div>
            <div class="detail-item">
                <span class="label">Assentos disponíveis</span>
                <span class="value"><%= request.getAttribute("assentos") != null ? request.getAttribute("assentos") : "14" %></span>
            </div>
        </div>
    </main>
    <footer>
        <div class="footer-menu">
            <ul>
                <li><a href="#">Quem somos</a></li>
                <li><a href="#">Entrar</a></li>
                <li><a href="#">Home</a></li>
            </ul>
        </div>
        <div class="footer-copyright">
            <p>Todos os direitos reservados. Este site ou qualquer parte dele não pode ser reproduzido ou usado de forma alguma sem autorização expressa, por escrito, do autor ou editor, exceto pelo uso de citações breves em uma resenha de ebook.</p>
        </div>
    </footer>
</body>
</html>
