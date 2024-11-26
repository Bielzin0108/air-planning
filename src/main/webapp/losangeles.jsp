<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Guia para Turistas em Los Angeles</title>
  <link rel="stylesheet" href="css/blogLA.css">
</head>
<body>
<header class="header">
  <div class="container">
    <h1>Guia para Turistas em Los Angeles</h1>
    <nav class="nav">
      <a href="<%= request.getContextPath() %>/admin" class="nav-link">Admin</a>
      <a href="<%= request.getContextPath() %>/logout" class="nav-link">Logout</a>
    </nav>
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
      <div class="text">
        <ul>
          <li><strong>Hollywood e a Calçada da Fama:</strong> Caminhe pela famosa Calçada da Fama.</li>
          <li><strong>Observatório Griffith:</strong> Vista panorâmica e trilha para o Letreiro de Hollywood.</li>
          <li><strong>Santa Monica e Venice Beach:</strong> Praias icônicas com atmosfera única.</li>
          <li><strong>Universal Studios:</strong> Atrações temáticas incríveis e tours de estúdios.</li>
          <li><strong>Getty Center:</strong> Museu impressionante com arquitetura moderna.</li>
        </ul>
      </div>
      <div class="images">
        <img src="<%= request.getContextPath() %>/images/calcadadafama.png" alt="Calçada da Fama">
        <img src="<%= request.getContextPath() %>/images/universal.png" alt="Universal Studios">
      </div>
    </div>
  </section>

  <section class="safety">
    <h3>Cuidados e Dicas de Segurança</h3>
    <ul>
      <li>Cuidado com golpes de "souvenirs gratuitos" e táxis não licenciados.</li>
      <li>Evite deixar objetos de valor visíveis dentro do carro.</li>
      <li>Use transporte confiável e fique atento ao trânsito intenso.</li>
      <li>Planeje suas visitas para evitar atrasos e aproveite melhor o tempo.</li>
    </ul>
  </section>
</main>
</body>
</html>