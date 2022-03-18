<?php
require('connection.php');
session_start()
?>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <header class="">
            <div class="logo">
               <a href="index.php"><img src="https://media.discordapp.net/attachments/487939362789654538/954107404046458990/alphaomega1.png?width=528&height=528"></a>
            </div>
            <div class="navigation">
                <a href="index.php">Главная</a>
                <a href="about">О нас</a>
                <a href="contacts">Контакты</a>
                <a href="word">Работа у нас</a>
            </div>
            <div class="auth">
                <?php
                if(isset($_SESSION["login"])){
                    echo("<span class='user'>".$_SESSION["login"].'</span> <a href="authorization.php">Выйти</a>');
                }
                else{
                    echo ('<a href="authorization.php">Войти</a>');
                }
                ?>
                </div>
        </header>
        <div class="main">
            <?php
            $result = $mysqli->query("SELECT * FROM `news`");
            $i=0;
            foreach($result as $val){
                if($i%2==0){
                    echo "
                    <div class='row'>";
                }
                echo "
                <div class='news'>
                <div class='picture'><img src=".$val['image'].".jpg></div>
                    <p class='zag'>".$val['name']."</p>
                    <p class='description'>".$val['description']."</p>
                    </div>";
                if($i%2==1){
                    echo "
                    </div>";
                }
                $i++;
            };
            ?>

        </div>
        <footer></footer>
        <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/main.js"></script>
    </body>
</html>