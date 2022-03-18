<?php
require('connection.php');
session_start();
?>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <header>
        <div class="logo">
               <a href="index.php"><img src="https://media.discordapp.net/attachments/487939362789654538/954107404046458990/alphaomega1.png?width=528&height=528"></a>
            </div>
        </header>
        <div class="main-auth">
            <form action="process.php" method="POST">
                <p>Введите логин</p>
                <input type="text" name="login" required placeholder="Mylogin32">
                <p>Введите пароль</p>
                <input type="password" name="password" required placeholder="••••••">
                <br>
                <button type="submit" name="submit">Зарегистрироваться</button>
            </form>
            <a href="authorization.php" class="trans">Авторизоваться</a>
        </div>
        <footer></footer>
    </body>
</html>