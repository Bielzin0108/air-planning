<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reserva de Voo</title>
    <link rel="stylesheet" href="css/home.css">
</head>
<body>
    <header>
        <div class="logo"></div>
        <nav class="menu">
            <ul>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
            </ul>
        </nav>
        <div class="user-menu">
            <a href="#">Log in</a>
            <span class="menu-icon">Menu</span>
        </div>
    </header>

    <main>
        <section class="reservation">
            <h1>Reserve seu voo</h1>
            <div class="tabs">
                <button class="active">Ida e volta</button>
                <button>Mão Única</button>
            </div>
            <form>
                <div class="input-group">
                    <input type="text" placeholder="De">
                </div>
                <div class="input-group">
                    <input type="text" placeholder="Para">
                </div>
                <div class="input-group dates">
                    <input type="date" placeholder="Partida">
                    <input type="date" placeholder="Retorno">
                </div>
                <div class="input-group">
                    <input type="text" placeholder="Passageiro">
                </div>
                <div class="input-group">
                    <input type="text" placeholder="Promoções">
                </div>
                <button type="submit">Procurar</button>
            </form>
        </section>

        <section class="promotion">
            <p><span class="icon-plane">✈</span> Explore as melhores ofertas de passagens aéreas para qualquer lugar do mundo e reserve sem taxas</p>
        </section>
    </main>
</body>
</html>
