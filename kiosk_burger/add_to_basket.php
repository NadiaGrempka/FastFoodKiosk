<?php
if (session_status()!=PHP_SESSION_ACTIVE) session_start();
include 'products.php';

if (isset($_REQUEST['product_id']) and isset($_REQUEST['prod_name']) and isset($_REQUEST['unit_price'])) {
    //pobranie informaci o przekazanym i wybranym wczesniej produkcie
    $product_id = $_REQUEST['product_id'];
    $product_name = $_REQUEST['prod_name'];
    $unit_price = $_REQUEST['unit_price'];
    if (isset($_SESSION['basket'])) { //wyciagniecie koszyka z istniejacego sesji do tabeli $basket
        $basket = $_SESSION['basket'];
    } else { //jesli nie ma koszyka, to utworzenie pustej tabeli pustego w tabeli $basket
        $basket = array();
    }
    //utworzenie pozycji koszyka
    $basket_item = ['product_id' => $product_id, 'product_name' => $product_name, 'unit_price' => $unit_price, "qty" => 1];
    //doddanie nowego elementu do koszyka i aktualizacja sesji
    array_push($basket, $basket_item);
    $_SESSION['basket'] = $basket;

}

?>
