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
            <button class="active" id="ida-volta-btn">Ida e volta</button>
            <button id="mao-unica-btn">Mão Única</button>
        </div>
        <form>
            <div class="input-group">
                <div class="icon-container">
                    <img class="icon" src="img/location.png" alt="Location Icon">
                </div>
                <input type="text" placeholder="De">
            </div>

            <div class="input-group">
                <div class="icon-container">
                    <img class="icon" src="img/location.png" alt="Location Icon">
                </div>
                <input type="text" placeholder="Para">
            </div>

            <div class="input-dates">
                <input
                        type="text"
                        placeholder="Partida"
                        onfocus="(this.type='date')"
                        onblur="if(this.value===''){this.type='text'}"
                >

                <input
                        type="text"
                        placeholder="Retorno"
                        id="retorno-field"
                        onfocus="(this.type='date')"
                        onblur="if(this.value===''){this.type='text'}"
                >
            </div>

            <div class="input-group">
                <div class="icon-container">
                    <img class="icon" src="img/passenger.png" alt="Passenger Icon">
                </div>
                <input type="text" placeholder="Passageiro">
            </div>

            <div class="input-group">
                <div class="icon-container">
                    <img class="icon" src="img/ticket.png" alt="Promotion Icon">
                </div>
                <input type="text" placeholder="Promoções">
            </div>

            <button type="submit">Procurar</button>
        </form>
    </section>

    <section class="promotion">
        <div class="promotion-content">
            <div class="icon-text">
                <img class="icon" src="img/plane.png" alt="Plane Icon">
                <p>
                    Explore as melhores ofertas de passagens aéreas para qualquer lugar do mundo
                    e reserve sem taxas.
                </p>
            </div>
            <div class="icon-text">
                <img class="icon" src="img/passport.png" alt="Passport Icon">
                <p>
                    Sua próxima jornada começa aqui! Compare preços, escolha o destino dos seus sonhos e aproveite
                    ofertas
                    exclusivas para suas viagens.
                </p>
            </div>
            <div class="icon-text">
                <img class="icon" src="img/sun-umbrella.png" alt="Umbrella Icon">
                <p>
                    Viaje mais gastando menos! Explore nossos pacotes promocionais e encontre as melhores opções de voos
                    e
                    hotéis para suas férias.
                </p>
            </div>
        </div>
    </section>

    <div class="offers-container">
        <div class="offers-header">
            <p class="offers-title">Ofertas de voos partindo de Brasil</p>
            <p class="offers-subtitle">Estas são as ofertas dos voos mais baratos. Corra! Todos os voos partem nos
                próximos três meses.</p>
        </div>
        <div class="card-container">
            <div class="card">
                <img src="img/sao-raimundo.png" alt="São Raimundo Nonato">
                <div class="card-content">
                    <h2>São Raimundo Nonato</h2>
                    <p>Brasil</p>
                    <div class="flight-info">
                        <div class="flight-details">
                            <img src="img/map-icon.png" alt="Icon">
                            <div>
                                <p class="flight-date">ter., 17 de dez.</p>
                                <p>REC - NSR com Azul</p>
                            </div>
                        </div>
                        <p class="flight-type">Direto</p>
                    </div>
                    <div class="flight-info">
                        <div class="flight-details">
                            <img src="img/map-icon.png" alt="Icon">
                            <div>
                                <p class="flight-date">ter., 24 de dez.</p>
                                <p>NSR - REC com Azul</p>
                            </div>
                        </div>
                        <p class="flight-type">Direto</p>
                    </div>
                    <span class="price">de R$ 240
                <img src="img/right-arrow.png" alt="Right Arrow">
            </span>
                </div>
            </div>

            <div class="card">
                <img src="img/assuncao.png" alt="Assunção">
                <div class="card-content">
                    <h2>Assunção</h2>
                    <p>Paraguai</p>
                    <div class="flight-info">
                        <div class="flight-details">
                            <img src="img/map-icon.png" alt="Icon">
                            <div>
                                <p class="flight-date">qua., 18 de dez.</p>
                                <p>FLN - ASU com Azul</p>
                            </div>
                        </div>
                        <p class="flight-type">Direto</p>
                    </div>
                    <div class="flight-info">
                        <div class="flight-details">
                            <img src="img/map-icon.png" alt="Icon">
                            <div>
                                <p class="flight-date">qua., 18 de dez.</p>
                                <p>ASU - FLN com Azul</p>
                            </div>
                        </div>
                        <p class="flight-type">Direto</p>
                    </div>
                    <span class="price">de R$ 606
                <img src="img/right-arrow.png" alt="Right Arrow">
            </span>
                </div>
            </div>

            <div class="card">
                <img src="img/montevideu.png" alt="Montevidéu">
                <div class="card-content">
                    <h2>Montevidéu</h2>
                    <p>Uruguai</p>
                    <div class="flight-info">
                        <div class="flight-details">
                            <img src="img/map-icon.png" alt="Icon">
                            <div>
                                <p class="flight-date">seg., 16 de dez.</p>
                                <p>FLN - MVD com Azul</p>
                            </div>
                        </div>
                        <p class="flight-type">Direto</p>
                    </div>
                    <div class="flight-info">
                        <div class="flight-details">
                            <img src="img/map-icon.png" alt="Icon">
                            <div>
                                <p class="flight-date">seg., 16 de dez.</p>
                                <p>MVD - FLN com Azul</p>
                            </div>
                        </div>
                        <p class="flight-type">Direto</p>
                    </div>
                    <span class="price">de R$ 692
                <img src="img/right-arrow.png" alt="Right Arrow">
            </span>
                </div>
            </div>
        </div>

        <div class="card-container">
            <div class="card">
                <img src="img/santiago.png" alt="Santiago">
                <div class="card-content">
                    <h2>Santiago</h2>
                    <p>Chile</p>
                    <div class="flight-info">
                        <div class="flight-details">
                            <img src="img/jetsmart.png" alt="Icon">
                            <div>
                                <p class="flight-date">qua., 4 de dez.</p>
                                <p>GRU - SCL com JetSmart</p>
                            </div>
                        </div>
                        <p class="flight-type">Direto</p>
                    </div>
                    <div class="flight-info">
                        <div class="flight-details">
                            <img src="img/jetsmart.png" alt="Icon">
                            <div>
                                <p class="flight-date">seg., 16 de dez.</p>
                                <p>SCL - GRU com JetSmart</p>
                            </div>
                        </div>
                        <p class="flight-type">Direto</p>
                    </div>
                    <span class="price">de R$ 726
                <img src="img/right-arrow.png" alt="Right Arrow">
            </span>
                </div>
            </div>

            <div class="card">
                <img src="img/santa-cruz.png" alt="Santa Cruz de la Sierra">
                <div class="card-content">
                    <h2>Santa Cruz de la Sierra</h2>
                    <p>Bolívia</p>
                    <div class="flight-info">
                        <div class="flight-details">
                            <img src="img/gol-airline.png" alt="Icon">
                            <div>
                                <p class="flight-date">qui., 30 de jan.</p>
                                <p>GRU - VVI com GOL Linhas Aéreas</p>
                            </div>
                        </div>
                        <p class="flight-type">Direto</p>
                    </div>
                    <div class="flight-info">
                        <div class="flight-details">
                            <img src="img/gol-airline.png" alt="Icon">
                            <div>
                                <p class="flight-date">qui., 6 de fev.</p>
                                <p>VVI - GRU com GOL Linhas Aéreas</p>
                            </div>
                        </div>
                        <p class="flight-type">Direto</p>
                    </div>
                    <span class="price">de R$ 974
                <img src="img/right-arrow.png" alt="Right Arrow">
            </span>
                </div>
            </div>

            <div class="card">
                <img src="img/buenos-aires.png" alt="Buenos Aires">
                <div class="card-content">
                    <h2>Buenos Aires</h2>
                    <p>Argentina</p>
                    <div class="flight-info">
                        <div class="flight-details">
                            <img src="img/map-icon.png" alt="Icon">
                            <div>
                                <p class="flight-date">seg., 16 de dez.</p>
                                <p>FLN - EZE com JetSmart</p>
                            </div>
                        </div>
                        <p class="flight-type">Direto</p>
                    </div>
                    <div class="flight-info">
                        <div class="flight-details">
                            <img src="img/map-icon.png" alt="Icon">
                            <div>
                                <p class="flight-date">qui., 19 de dez.</p>
                                <p>EZE - FLN com JetSmart</p>
                            </div>
                        </div>
                        <p class="flight-type">Direto</p>
                    </div>
                    <span class="price">de R$ 1.313
                <img src="img/right-arrow.png" alt="Right Arrow">
            </span>
                </div>
            </div>
        </div>

        <div class="info-container">
            <p>
                <img src="img/info.png" alt="Info Icon">
                <b>Como encontramos essas ofertas?</b> Analisamos todos os voos da classe econômica partindo de Brasil
                nos
                próximos três meses. Essas tarifas têm descontos maiores quando comparadas ao preço médio. Todas foram
                encontradas nos últimos quatro dias e estão sujeitas a alterações.</p>
        </div>

        <section class="section-container">
            <div class="section-header">
                <h1>Buscando as melhores passagens aéreas para qualquer lugar do mundo?</h1>
                <p>
                    Tudo é muito simples por aqui. São 100 milhões de viajantes usando nossa plataforma para comparar
                    preços em mais de 1.200 companhias aéreas e fornecedores de viagens. Com tantas opções em um só
                    lugar, você economiza e dá adeus ao estresse — saiba como.
                </p>
            </div>
            <div class="cards-wrapper">
                <div class="card-tips">
                    <img src="img/globe.svg" alt="Ícone do mundo">
                    <h3>Faça uma busca para "o mundo inteiro" e explore todos os destinos</h3>
                    <p>
                        Insira o aeroporto de partida e as datas da viagem e clique em "o mundo inteiro". Você verá voos
                        para todos os destinos do mundo, os mais baratos primeiro.
                    </p>
                </div>
                <div class="card-tips">
                    <img src="img/cards.svg" Ícone de preços">
                    <h3>Pague menos e vá mais longe com preços transparentes</h3>
                    <p>
                        As ofertas mais baratas de passagens aéreas. Sem taxas ocultas. Sem brincadeiras. Conosco, o
                        preço que você vê nas suas buscas é o que você pagará.
                    </p>
                </div>
                <div class="card-tips">
                    <img src="img/clock.svg" alt="Ícone do relógio">
                    <h3>Garanta a melhor reserva com os alertas de preços</h3>
                    <p>
                        Encontrou seu voo, mas ainda não é hora de fazer a compra? Crie alertas de preço e nós
                        avisaremos você quando o preço da passagem aérea aumentar ou diminuir.
                    </p>
                </div>
            </div>
        </section>
    </div>


</main>

<script>
    document.addEventListener('DOMContentLoaded', () => {
        const idaVoltaBtn = document.getElementById('ida-volta-btn');
        const maoUnicaBtn = document.getElementById('mao-unica-btn');

        const retornoField = document.getElementById('retorno-field');

        idaVoltaBtn.addEventListener('click', () => {
            retornoField.style.display = 'block';
            idaVoltaBtn.classList.add('active');
            maoUnicaBtn.classList.remove('active');
        });

        maoUnicaBtn.addEventListener('click', () => {
            retornoField.style.display = 'none';
            maoUnicaBtn.classList.add('active');
            idaVoltaBtn.classList.remove('active');
        });
    });
</script>
</body>
</html>