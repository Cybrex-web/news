<?php
require("connection.php");
session_start();
unset($_SESSION['login']);
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
            <div class="navigation">
                <a href="index.php">Главная</a>
                <a href="about">О нас</a>
                <a href="contacts">Контакты</a>
                <a href="word">Работа у нас</a>
            </div>
        </header>
        <div class="main-auth">
            <form action="process.php" method="POST">
                <p class="zag">Введите логин</p>
                <input type="text" name="login" required placeholder="Mylogin32">
                <p class="zag">Введите пароль</p>
                <input type="password" name="password" required placeholder="••••••">
                <br>
                <button type="submit" name="auth">Войти</button>
            </form>
            <a href="reg.php" class="trans">Зарегистрироваться</a>
        </div>
        <footer></footer>
    </body>
</html>