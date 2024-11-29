<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Entre em Contato</title>
    <link rel="stylesheet" href="css/contato.css">
</head>
<body>
<div class="top-border"></div> <!-- Barra superior -->
<div class="container">
    <div class="form-box">
        <h1>ENTRE EM
            CONTATO CONOSCO</h1>

        <form action="processForm.jsp" method="post">

            <input type="text" id="nome" name="nome" placeholder="Digite seu nome" required>


            <input type="text" id="telefone" name="telefone" placeholder="Digite seu telefone" required>


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
<div class="bottom-border"></div> <!-- Barra inferior -->
</body>
</html>