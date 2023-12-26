<div id="confirmation">
<?php
if (session_status()!=PHP_SESSION_ACTIVE) session_start();

include 'main_menu.php';

//utworzenie pliku z potwierdzeniem, koszyk jest w sesji a id zamowienia w cookie
if (!empty($_SESSION['basket']) and !empty($_COOKIE['order_id'])) {
    $myfile = fopen("confirmation_file.txt", "w") or die("Unable to open file!");
    $basket = $_SESSION['basket'];
    $txt = "Zamówienie nr " . $_COOKIE['order_id'] . "</br></br>";
    $txt = $txt . "Zakupione produkty:". "</br>";
    foreach ($basket as $key => $row) {
        $txt = $txt . $row['product_id'] . " " . $row['product_name'] . " " . $row['unit_price'] . " PLN " . $row['qty'] . "</br>";
    }
    echo $txt . "</br>";
    fwrite($myfile, $txt);
    fclose($myfile);
    //wyczysc koszyk
    //$_SESSION['basket']=array();
    echo "Potwierdzenie wydrukowane, plik zapisany";
} else {
    echo "Potwierdzenie nie zostało wydrukowane.";
}

?>
</div>