<?php
if (session_status()!=PHP_SESSION_ACTIVE) session_start();

if (!empty($_SESSION['basket'])) {
    $basket=$_SESSION['basket'];
    $operation = $_REQUEST['operation'];
    $position_in_basket = $_REQUEST['position']; //polozenie elementu
    if ($operation=='del') { //operacja 'del' to usuniecie wpisu z koszyka/cookie
        unset($basket[$position_in_basket]);
    }
    //zapis zmienionego koszyka do sesji
    $_SESSION['basket'] = $basket;
}

include 'display_basket.php';

?>

