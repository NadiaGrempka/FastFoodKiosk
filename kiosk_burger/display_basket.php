<?php //wyswietlenie koszyka
if (session_status()!=PHP_SESSION_ACTIVE) session_start();


if (!empty($_SESSION['basket'])) {
    //pobranie koszyka z sesji i wstawienie go do tablicy $basket
    $basket = $_SESSION['basket'];
    //koszyk sklada sie z wierszy, kazdy wiesz jest tablica zawierajaca wybrany produkt => wyswietlona w htmlu ponizej

?>
        <?php include 'menuLeft.php'; ?>
    <div id="product_table" class="itemmiddle">
        <div class="container-column">
        <div class="top">
        <table class="tabela2">
            <caption>Koszyk zakupów </caption>
            <tr>
                <th>Id produktu</th>
                <th>Nazwa produktu</th>
                <th>Cena jednostkowa</th>
                <th>Ilość</th>
                <th></th>
            </tr>
            <?php foreach ($basket as $key => $row) { ?>
                <tr>
                    <td><?php echo $row['product_id']; ?></td>
                    <td><?php echo $row['product_name']; ?></td>
                    <td style="text-align: right"><?php echo $row['unit_price']. " PLN";?></td>
                    <td style="text-align: right"><?php echo $row['qty'];?></td>
                    <td><?php echo  "<a href='basket_update.php?operation=del&position=" .  $key . "'><label class='dodaj'>Usuń</label></a>";?></td>
                </tr>
            <?php } ?>
        </table>

        </div>

        <div class="bottom">
            <a href='clear_basket.php'><input type="submit" class="baton" value="Wyczyść koszyk"></a>
            <a href='submit_order.php'><input type="submit" class="baton" value="Złóż zamówienie"></a>
        </div>
        </div>
    </div>

<?php
    include 'menuRight.php';
}
else {
    include 'menuLeft.php';
    echo "<div class='itemmiddle'>" . "<p class='warning'>Koszyk jest pusty</p>". "</div>";
    include 'menuRight.php';
}
?>