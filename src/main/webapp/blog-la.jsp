<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Guia para Turistas em Los Angeles</title>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/blog-la.css">
</head>
<body>
<header>
    <div class="logo">
        <img src="img/logo.png" alt="Logo">
    </div>
    <div class="menu">
        <ul>
            <li><a href="/home.jsp">Home</a></li>
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
<main class="content">
  <section class="intro">
    <h2>Guia para Turistas em Los Angeles: O Que Fazer e Cuidados Importantes</h2>
    <p>Los Angeles, também conhecida como "Cidade dos Anjos", é um destino vibrante e diversificado, com atrações que vão desde praias deslumbrantes até a famosa indústria cinematográfica de Hollywood.</p>
  </section>

  <section class="attractions">
    <h3>Melhores Atrações e Atividades em Los Angeles</h3>
    <div class="attraction-list">
      <!-- Text Section -->
      <div class="text-left">
        <ul>
          <li><strong>Hollywood e a Calçada da Fama:</strong> Caminhe pela famosa Calçada da Fama e veja as estrelas dedicadas às maiores personalidades do entretenimento. Não deixe de visitar o Teatro Chinês e o Dolby Theatre, casa do Oscar.</li>
        </ul>

          <ul>
          <li><strong>Observatório Griffith:</strong> O Observatório Griffith oferece vistas incríveis da cidade e acesso a exposições científicas. Aproveite também para fazer uma trilha até o icônico Letreiro de Hollywood.</li>
          </ul>

          <ul>
          <li><strong>Santa Monica e Venice Beach:</strong> Passeie pelo Píer de Santa Monica, com sua famosa roda-gigante, ou explore Venice Beach, conhecida por sua atmosfera boêmia, artistas de rua e a agitada Muscle Beach.</li>
          </ul>

          <ul>
          <li><strong>Universal Studios:</strong> Um parque temático imperdível para fãs de cinema, com atrações baseadas em grandes franquias como "Harry Potter" e "Jurassic Park", além de tours pelos estúdios de filmagem.</li>
        </ul>
      </div>
      <!-- Image Section -->
      <div class="image-right">
        <img src="/img/calcadadafama.png" alt="Calçada da Fama">
      </div>
    </div>

        <!-- Text Section -->
        <div class="text-right">
          <ul>
            <li><strong>Getty Center:</strong> Um museu impressionante que combina arquitetura moderna com obras de arte de renome mundial. Os jardins e vistas panorâmicas também são um destaque.</li>
            <li><strong>Beverly Hills e Rodeo Drive:</strong> Explore as ruas elegantes de Beverly Hills e faça compras (ou simplesmente admire) em Rodeo Drive, famosa por suas lojas de luxo e cenários de filmes.</li>
            <li><strong>Malibu e Suas Praias:</strong> Aprecie as belas praias de Malibu, como Zuma Beach e El Matador State Beach, perfeitas para relaxar, surfar ou apreciar o pôr do sol.</li>
            <li><strong>Downtown Los Angeles (DTLA):</strong> Descubra a moderna cena gastronômica no Grand Central Market, visite o Walt Disney Concert Hall ou explore a histórica Olvera Street, considerada o coração cultural da cidade.</li>
          </ul>

        </div>
      <!-- Image Section -->
      <div class="image-left">
          <img src="/img/universal.png" alt="Universal">
      </div>

      </div>
    </section>
    <section class="safety">
      <h3>Cuidados e Dicas de Segurança</h3>
      <div class="safety-list">
        <ul>
          <li><strong>1. Evite Golpes Comuns</strong>
            <p>• Cuidado com artistas de rua e vendedores na Calçada da Fama que podem oferecer "souvenirs gratuitos" e depois exigir pagamento.</p>
            <p>• Evite táxis não licenciados ou pessoas que oferecem passeios guiados não oficiais em pontos turísticos.</p>
          </li>
          <li><strong>2. Transporte e Locomoção</strong>
            <p>• Considere alugar um carro para se deslocar, pois muitos pontos turísticos são distantes entre si. Use apenas aplicativos confiáveis como Uber ou Lyft para transporte privado.</p>
            <p>• No transporte público, esteja atento aos seus pertences, especialmente em horários de pico.</p>
          </li>
          <li><strong>3. Áreas a Serem Evitadas à Noite</strong>
            <p>• Embora LA tenha muitas áreas seguras, evite andar sozinho em bairros desconhecidos à noite, como partes do centro (DTLA) e Skid Row, conhecidos por questões de segurança.</p>
          </li>
          <li><strong>4. Proteja seus Pertences</strong>
            <p>• Não deixe itens de valor visíveis dentro do carro, especialmente em locais turísticos e estacionamentos públicos.</p>
            <p>• Mantenha sua bolsa ou mochila sempre fechada e na frente do corpo para evitar furtos.</p>
          </li>
          <li><strong>5. Golpes Relacionados a Acomodações</strong>
            <p>• Reserve acomodações apenas em sites confiáveis, como Booking.com ou Airbnb. Desconfie de ofertas que parecem boas demais para ser verdade.</p>
          </li>
          <li><strong>6. Clima e Deslocamentos</strong>
            <p>• Los Angeles pode ser quente e seca; leve protetor solar, água e carregue água, especialmente se for explorar praias ou trilhas.</p>
            <p>• Trânsito pode ser um problema; planeje seus horários para evitar congestionamentos nos horários de pico.</p>
          </li>
          <li><strong>7. Cuidado com Águas-Vivas e Correntes de Retorno</strong>
            <p>• Se for nadar, fique atento às placas de alerta em praias e siga as instruções dos salva-vidas.</p>
          </li>
        </ul>
      </div>
      <p class="conclusion">
        Com tantas atrações, planeje bem seu itinerário para otimizar tempo e deslocamentos. Adquira ingressos antecipados para atrações populares, como Universal Studios ou o Observatório Griffith, e aproveite tudo o que essa cidade incrível tem a oferecer.<br>
        Los Angeles é uma cidade cheia de contrastes e oportunidades. Com um pouco de planejamento e atenção, sua visita será inesquecível! 🌴✨
      </p>
    </section>

</main>
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
</body>
</html>
