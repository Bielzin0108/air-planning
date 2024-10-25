<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" href="css/signup.css">
</head>
<body>
    <div class="container">
        <div class="left-side">
            <h1>JUNTE-SE<br>A NÓS</h1>
            <p>Crie sua conta para começar a explorar todas as funcionalidades e benefícios que oferecemos.<br> </p>
            <p> Preencha os campos ao lado para se registrar e aproveitar nossos serviços.</p>
        </div>
        <div class="right-side">
            <div class="signup-box">
                <h2>Sign Up</h2>
                <form action="#" method="post">
                    <div class="signup-container">
                    <div class="input-group">
                        <div class="input-container">
                        <input type="text" id="nome" placeholder="Nome">
                        <img class="icon" src="img/user.png" alt="Icone de user">
                        </div>
                    </div>
                    <div class="input-group">
                        <div class="input-container">
                        <input type="email" id="email" placeholder="E-mail">
                        <img class="icon" src="img/mail.png" alt="Icone de email">
                        </div>
                    </div>
                    <div class="input-group">
                        <div class="input-container">
                        <input type="password" id="senha" placeholder="Senha">
                        <img class="icon" src="img/lock.png" alt="Icone de lock">
                        </div>
                    </div>
                    </div>
                    <button type="submit">Sign up</button>
                    <p>Já possui uma conta? <a href="/login">Login</a></p>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
