<?php
if (session_status()!=PHP_SESSION_ACTIVE) session_start();
//usuniecie koszyka/cookie
$_SESSION['basket'] = array();
include "display_basket.php";
?>