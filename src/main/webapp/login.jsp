<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <div class="container">
        <div class="login-box">
            <h2>Login</h2>
            <form action="/login" method="post">
                <div class="input-group">
                    <div class="input-container">
                        <input type="text" name="email" placeholder="Email" required>
                        <img class="icon-user" src="img/user.png" alt="Ícone de usuário">
                    </div>
                </div>
                <div class="input-group">
                    <div class="input-container">
                        <input type="password" name="senha" placeholder="Senha" required>
                        <img class="icon-lock" src="img/lock.png" alt="Ícone de bloqueio">
                    </div>
                </div>
                <button type="submit">Login</button>
                <p>Não possui uma conta? <a href="/signup">Cadastre-se</a></p>
            </form>
        </div>
    </div>
</body>
</html>
