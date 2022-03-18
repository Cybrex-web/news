<?php
require("connection.php");
session_start();
if(isset($_POST["submit"])){
    $login=$_POST['login'];
    $result = $mysqli->query("SELECT login FROM `users` WHERE login = '$login'");
    if($result->num_rows==0){
        $password= $_POST['password'];
        $mysqli->query("INSERT INTO `users`(login,password) VALUES('$login','$password')");
        $_SESSION["login"] = $login;
        header('Location: index.php');
    }
    else{
        echo "Такой пользователь уже есть";
    }
}
if(isset($_POST["auth"])){
    $login=$_POST['login'];
    $password=$_POST['password'];
    $result = $mysqli->query("SELECT * FROM `users` WHERE login = '$login' AND password = '$password'");
    if($result->num_rows==1){
        $_SESSION["login"]=$login;
        header('Location: index.php');
    }
    else{
        header('Location: index.php');
    }
}
?>