<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" href="css/signup.css">
    <script>
        const formatCelular = (value) => {
            return value
                .replace(/\D/g, '')
                .replace(/^(\d{2})(\d)/, '($1) $2')
                .replace(/(\d{5})(\d)/, '$1-$2')
                .slice(0, 15);
        };

        const formatCPF = (value) => {
            return value
                .replace(/\D/g, '')
                .replace(/(\d{3})(\d)/, '$1.$2')
                .replace(/(\d{3})(\d)/, '$1.$2')
                .replace(/(\d{3})(\d{1,2})$/, '$1-$2')
                .slice(0, 14);
        };

        const onCPFInput = (event) => {
            let value = event.target.value.replace(/\D/g, '');
            if (value.length <= 11) {
                event.target.value = formatCPF(value);
            } else {
                event.target.value = formatCPF(value.slice(0, 11));
            }
        };
    </script>
</head>
<body>
<div class="container">
    <div class="left-side">
        <h1>JUNTE-SE<br>A NÓS</h1>
        <p>Crie sua conta para começar a explorar todas as funcionalidades e benefícios que oferecemos.<br></p>
        <p>Preencha os campos ao lado para se registrar e aproveitar nossos serviços.</p>
    </div>
    <div class="right-side">
        <div class="signup-box">
            <h2>Sign Up</h2>
            <form action="#" method="post">
                <div class="signup-container">
                    <div class="input-group">
                        <div class="input-container">
                            <input type="text" id="nome" placeholder="Nome">
                            <img class="icon" src="img/user.png" alt="Ícone de usuário">
                        </div>
                    </div>
                    <div class="input-group">
                        <div class="input-container">
                            <input type="text" id="numero" placeholder="Número"
                                   oninput="this.value = formatCelular(this.value)">
                            <img class="icon" src="img/telephone.png" alt="Ícone de telefone">
                        </div>
                    </div>
                    <div class="input-group">
                        <div class="input-container">
                            <input type="email" id="email" placeholder="E-mail">
                            <img class="icon" src="img/mail.png" alt="Ícone de email">
                        </div>
                    </div>
                    <div class="input-group">
                        <div class="input-container">
                            <input type="password" id="senha" placeholder="Senha">
                            <img class="icon" src="img/lock.png" alt="Ícone de cadeado">
                        </div>
                    </div>
                    <div class="input-group">
                        <div class="input-container">
                            <input type="text" id="cpf" placeholder="CPF" oninput="onCPFInput(event)">
                            <img class="icon" src="img/id-card.png" alt="Ícone de identificação">
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
