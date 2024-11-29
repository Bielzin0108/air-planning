<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Entre em Contato</title>
    <link rel="stylesheet" href="css/contato.css">
</head>
<body>
<div class="container">
    <div class="form-box">
        <h1>ENTRE EM CONTATO CONOSCO</h1>
        <form action="processForm.jsp" method="post">
            <label for="nome">SEU NOME</label>
            <input type="text" id="nome" name="nome" required>

            <label for="telefone">SEU TELEFONE</label>
            <input type="text" id="telefone" name="telefone" required>

            <label for="comentario">COLOQUE SUA DÚVIDA OU COMENTÁRIO</label>
            <textarea id="comentario" name="comentario" rows="5" required></textarea>

            <button type="submit">Enviar</button>
        </form>
    </div>

    <div class="footer">
        <div class="contact-info">
            <div class="icon">
                <img src="email-icon.png" alt="Email">
            </div>
            <p>emailairplanning@email.com</p>
        </div>
        <div class="contact-info">
            <div class="icon">
                <img src="phone-icon.png" alt="Telefone">
            </div>
            <p>0800 123 456</p>
        </div>
        <div class="contact-info">
            <div class="icon">
                <img src="address-icon.png" alt="Endereço">
            </div>
            <p>Rua Senac Santo Amaro<br>Turma 3ND</p>
        </div>
    </div>
</div>
</body>
</html>