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
    <div class="logo">
        <img src="img/logo.png" alt="Logo">
    </div>
    <div class="menu">
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">Sobre</a></li>
            <li><a href="#">Contato</a></li>
            <li><a href="#">Ajuda</a></li>
        </ul>
    </div>
    <div class="user-menu">
        <a href="#" class="login">Log in</a>
        <span class="menu-icon">Menu</span>
    </div>
</header>

<section class="hero">
    <div class="hero-overlay">
        <h1>As melhores passagens aéreas para qualquer lugar do mundo</h1>
        <p>Encontre voos baratos, reserve com segurança e planeje sua próxima viagem com facilidade.</p>
    </div>
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
            <button type="submit">Procurar</button>
        </form>
    </section>
</section>

<main>


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
    </div>

    <div class="info-wrapper">
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
                    <img src="img/vacation.png" alt="Ícone do mundo">
                    <h3>Descubra destinos incríveis ao redor do globo</h3>
                    <p>
                        Explore as opções de viagem mais populares e surpreendentes. Com apenas alguns cliques, encontre
                        passagens acessíveis para lugares que você sempre quis conhecer.
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

        <div class="mission-container">
            <p class="mission-title">Planeje sua jornada com tranquilidade</p>
            <p class="mission-subtitle">A nossa missão é ajudar você a reservar seus voos com confiança e tornar a sua
                viagem a mais tranquila
                possível.</p>

        </div>
        <div class="feature-container">
            <div class="feature-item">
                <img src="img/flexible-flights-icon.png" alt="Ícone de flexibilidade">
                <div>
                    <h3>Encontre ofertas de passagens aéreas flexíveis</h3>
                    <p>Explore as ofertas de passagens aéreas flexíveis para que você não perca nada se o seu voo for
                        alterado ou cancelado</p>
                </div>
            </div>
            <div class="feature-item">
                <img src="img/bed.png" alt="Bed Icon">
                <div>
                    <h3>Adicione hotéis e aluguel de carros</h3>
                    <p>Planeje sua viagem com hotéis e aluguel de carros, e mantenha suas reservas em um só lugar</p>
                </div>
            </div>
        </div>

        <div class="faq-section">
            <h2>Perguntas frequentes sobre como encontrar ofertas de voos</h2>
            <details class="faq-item">
                <summary>Como encontro as melhores promoções de voos de última hora?</summary>
                <p>
                    Às vezes, vale a pena esperar até a última hora para ver se as companhias aéreas reduzem o preço dos
                    assentos que restaram em seus voos, mas pode ser arriscado. Confira aqui algumas maneiras de
                    conseguir
                    uma ótima promoção de passagens aéreas uma ou duas semanas antes de voar usando a nossa busca de
                    voos:
                </p>
                <p>
                    Se o que importa é sair de férias e não o lugar, busque voos para "<b>o mundo inteiro</b>" para
                    conferir os melhores
                    voos em promoção para qualquer destino em um futuro próximo.
                </p>
                <p>
                    Se você já decidiu o destino e quer encontrar os melhores voos em promoção para as próximas semanas,
                    escolha "<b>mês inteiro</b>" ao fazer a busca e depois selecione o mês seguinte para encontrar o dia
                    mais barato
                    para voar.
                </p>
            </details>
            <details class="faq-item">
                <summary>Como posso acompanhar as ofertas de voos e tarifas baixas?</summary>
                <p>
                    Se você pensa em viajar, mas ainda não quer reservar, não se preocupe. Você pode ficar de olho nos
                    preços
                    de duas maneiras.
                </p>
                <p>
                    Ative um <b>Alerta de preço</b> para monitorarmos os preços e avisarmos por e-mail caso eles
                    aumentem ou
                    diminuam.
                </p>
                <p>
                    Vá mais longe: baixe nosso aplicativoe receba esses alertas de preços diretamente
                    no celular.
                </p>
                <p>
                    Inscreva-separa receber nossos e-mails com ofertas semanais de voos e conferir as
                    novidades sobre as
                    viagens diretamente na sua caixa de entrada!
                </p>
            </details>
            <details class="faq-item">
                <summary>O que acontece depois que eu reservar meu voo?</summary>
                <p>
                    Depois de selecionar seu voo, você fará a reserva diretamente com uma de nossas companhias aéreas ou
                    agências parceiras, geralmente no site delas. O e-mail de confirmação da reserva do voo e todas as
                    outras
                    informações de que você precisa serão enviadas por elas.
                </p>
                <p>
                    Ou, se você reservou diretamente com o Skyscanner, enviaremos a confirmação da reserva por e-mail.
                    Se
                    você reservou diretamente conosco, confira sua conta no nosso site ou aplicativo para ver as
                    informações
                    da reserva. Você também pode falar com nossa equipe de Atendimento ao Cliente se precisar de ajuda.
                </p>
            </details>
            <details class="faq-item">
                <summary>Para qual destino devo reservar um voo no momento?</summary>
                <p>
                    São Paulo está em alta entre os viajantes no momento. Se você precisa de mais inspiração, busque no
                    mundo inteiro
                    para encontrar as melhores promoções de voos para qualquer lugar.
                </p>
            </details>
        </div>
    </div>
</main>
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