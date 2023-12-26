<?php if (session_status()!=PHP_SESSION_ACTIVE) session_start();?>
<!DOCTYPE html>
<html lang="pl" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <title>Food kiosk</title>
    <link rel="stylesheet" href="./style.css">
</head>
<body>
<div class="container">
    <div id="menu" class="itemleft">
        </br></br>
        <br/><a href="products.php?product_type=M"><input type="submit" id="burger" class="kafelek" value="Burgery"></a></br>
        </br> <a href='products.php?product_type=B'><input type="submit" id="napoje" class="kafelek" value="Napoje"></a> </br>
        </br> <a href='products.php?product_type=A'><input type="submit" id="dodatki" class="kafelek" value="Dodatki"></a> </br>

        </br></br>
    </div>