<%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 11/27/2024
  Time: 10:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/about-us.css">
    <header>
        <div class="logo">
            <img src="/img/logo.png" alt="Logo">
        </div>
        <div class="menu">
            <ul>
                <li><a href="/home">Home</a></li>
                <li><a href="/about-us.jsp">Sobre</a></li>
                <li><a href="/contato.jsp">Contato</a></li>
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
    <div class="about-us">
        <div class="about-header">
            <h1>Para nós, você vem em <br/> primeiro lugar</h1>
        </div>
        <div class="about-wrapper">
            <div class="about-content">
                <div class="about-title">
                    <h2>Viaje à sua <br/>maneira</h2>
                </div>
                <div class="about-text">
                    <p>
                        Quando começamos nossa jornada em 2003, decidimos fazer as coisas de uma maneira diferente.
                        Nosso
                        objetivo era mostrar aos viajantes todas as opções de voo em um só lugar, criando uma
                        alternativa
                        simples aos sites confusos que tornam a experiência de viajar algo complexo.
                    </p>
                    <p>
                        Os anos passaram e continuamos sendo líderes globais de viagens, com mais de 100 milhões de
                        pessoas
                        no mundo inteiro usando nosso aplicativo e site todos os meses. Nós nos orgulhamos da nossa
                        transparência e imparcialidade, buscando bilhões de preços de passagens aéreas, hotéis e aluguel
                        de
                        carros para ajudar a encontrar as melhores ofertas disponíveis.
                    </p>
                    <p>
                        Nossa missão é ajudar viajantes a planejar e reservar suas viagens com facilidade e confiança.
                        Seja
                        usando a tecnologia para simplificar o processo ou conectando viajantes a parceiros confiáveis
                        para
                        fornecer soluções honestas e transparentes, estamos determinados a ajudar todos a encontrarem a
                        melhor oferta.
                    </p>
                </div>
            </div>
        </div>
        <div class="explorer-container">
            <p>
                Nossa visão é ajudar todos os viajantes a explorar o mundo com facilidade, nessa e nas próximas
                gerações.
            </p>
            <img src="/img/about-us-logo.svg" alt="Ícone decorativo">
        </div>
        <div class="about-wrapper">
            <div class="about-content">
                <div class="about-title">
                    <h2>Líder global em <br/>viagens</h2>
                </div>
                <div class="about-text">
                    <p>
                        Viajar tem tudo a ver com liberdade. Por esse motivo, é importante que o processo de planejar e
                        reservar sua viagem seja simples e não uma tarefa árdua.
                    </p>
                    <p>
                        Sabemos que você procura os melhores preços e a maior flexibilidade ao escolher o que é certo
                        para você.
                    </p>
                    <p>
                        É por isso que estamos sempre trabalhando para garantir que nosso aplicativo e site sejam muito
                        simples e rápidos de usar.
                    </p>
                    <p>
                        Com mais de 1.200 parceiros no mundo inteiro, estamos constantemente desenvolvendo a nossa
                        melhor rede para ligar os viajantes às opções mais precisas e confiáveis, para que todos
                        encontrem as melhores ofertas.
                    </p>
                    <p>
                        Com mais de 80 bilhões de buscas de preços todos os dias, os viajantes podem ter certeza de que
                        viram as melhores opções possíveis, tudo em um só lugar.
                    </p>
                </div>
            </div>
        </div>
        <div class="about-wrapper">
            <div class="about-content">
                <div class="about-title">
                    <h2>Planejamento de <br/> viagens fácil <br/> para todos</h2>
                </div>
                <div class="about-text">
                    <p>
                        Fazemos o trabalho duro pelos nossos viajantes. Usamos nossos dados, insights e inovação
                        tecnológica para simplificar o complexo, para que você possa voltar às coisas mais importantes —
                        planejamento, reserva e viagens sem estresse.
                    </p>
                </div>
            </div>
        </div>
        <div class="about-wrapper">
            <div class="about-content">
                <div class="about-title">
                    <h2>Sempre imparcial, <br/> honesto e <br/> transparente</h2>
                </div>
                <div class="about-text">
                    <p>
                        Como somos viajantes, sempre lideramos com honestidade e transparência — e mantemos nossos
                        parceiros com os mesmos padrões elevados. Isso significa que não há taxas ocultas, sem encargos
                        secretos, sem custo adicional para você, por isso sempre permanecemos imparciais.
                    </p>
                </div>
            </div>
        </div>
        <div class="about-wrapper">
            <div class="about-content">
                <div class="about-title">
                    <h2>Uma força para a <br/> mudança <br/> positiva</h2>
                </div>
                <div class="about-text">
                    <p>
                        Acreditamos que as viagens devem ter um impacto positivo. Junto com nossos parceiros, estamos
                        comprometidos a ajudar a moldar um futuro mais responsável para as viagens.
                    </p>
                    <p>De comunicar o impacto ambiental dos voos e compartilhar informações imparciais para que você
                        possa fazer uma escolha informada, até tornar nosso site o mais acessível e nossos negócios o
                        mais inclusivos, nosso pensamento não é apenas para hoje e amanhã, é para as próximas
                        gerações.</p>
                </div>
            </div>
        </div>


        <div class="sustainability-section">
            <div class="sustainability-content">
                <h2>Nossos passos em direção à sustentabilidade</h2>
                <p>
                    Junto com nossos parceiros, estamos comprometidos em ajudar a moldar um futuro mais responsável para
                    as viagens.
                </p>
            </div>
            <div class="sustainability-image">
                <img src="img/sustentability.webp" alt="Pessoas na praia durante o pôr do sol">
            </div>
        </div>
        <div class="about-wrapper">
            <div class="about-content">
                <div class="about-title">
                    <h2>Mostramos as <br/> opções de voos <br/> com emissões <br/> mais baixas</h2>
                </div>
                <div class="about-text">
                    <p>
                        Nossa função é compartilhar informações imparciais com os viajantes para que tomem decisões mais
                        conscientes. Por isso, achamos importante compartilhar dados sobre o impacto ambiental dos voos.
                        Quando fizer uma busca, você poderá ver quais passagens aéreas emitem pelo menos 6% menos CO2e
                        do que um voo típico da mesma rota.
                    </p>
                </div>
            </div>
        </div>
        <div class="about-wrapper">
            <div class="about-content">
                <div class="about-title">
                    <h2>Assumindo a <br/> responsabilidade</h2>
                </div>
                <div class="about-text">
                    <p>
                        Como uma empresa global, nós nos comprometemos a fazer tudo o que pudermos para reduzir nossa
                        pegada de carbono. Fomos signatários fundadores da Declaração de Glasgow para Ação Climática no
                        Turismo na COP26, através da qual informaremos anualmente o nosso progresso nas emissões
                        líquidas zero, ou "Net Zero".
                    </p>
                    <p>
                        Também fazemos parte do programa Board Now com nossos parceiros da SkyNRG, comprando Combustível
                        Sustentável para a Aviação (SAF) para que possamos reduzir o impacto de nossas viagens
                        corporativas, além de ajudar a impulsionar o fornecimento de SAF para o futuro.
                    </p>
                </div>
            </div>
        </div>
        <div class="sustainability-image-footer">
            <div class="sustainability-wrapper">
                <h1>Nossos passos em direção à <br/> sustentabilidade</h1>
                <p>Queremos ajudar todos os viajantes a explorar nosso mundo com facilidade, nessa e nas próximas
                    gerações.</p>
                <p>Junto com nossos parceiros, estamos comprometidos em construir um futuro mais responsável para as
                    viagens.</p>
            </div>
        </div>
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
</head>
<body>

</body>
</html>
