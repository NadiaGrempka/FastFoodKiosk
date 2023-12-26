<?php
session_start();
//ustawienie pustego koszyka
$_SESSION['basket']=array();
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Food kiosk &#127789</title>
    <!--    <link rel="stylesheet" href="style.css">-->
    <link rel="stylesheet" href="./style.css">
</head>
<body id="Welcomepage">

    <h1>Dobrze Cię widzieć!</h1>
    <a href="main_menu.php"><input type="submit" id="order" value="Złóż zamówienie"></a>
<!--     <button type="submit" id="order" ="main_menu.php" formmethod="post" >Zamow jedzonko :) </button>-->



</body>
</html>