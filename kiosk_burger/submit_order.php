<?php if (session_status()!=PHP_SESSION_ACTIVE) session_start();

//include 'main_menu.php';
//wyswietlenie zamowienia

$total=0;
if (!empty($_SESSION['basket'])) {
    $basket = $_SESSION['basket'];
    //koszyk sklada sie z wierszy, kazdy wiesz jest tablica zawierajaca wybrany produkt
    foreach ($basket as $key => $prod) {
        //sumowanie kwoty zakupow w koszyku
        foreach ($prod as $key2 => $value) {
           if ($key2=='unit_price') $total+=$value;
        }
    }
}
?>
<?php include 'menuLeft.php'; ?>
<body id="formularzadrs">
<div class="itemmiddle">
</br> Zamówienie: </br>
    <div id="product_table">
        <table>
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
                </tr>
            <?php } ?>
        </table>
        </br><paragraf>Kwota zamówienia: <?php echo $total; ?>  PLN</paragraf>
    </div>
<div>
<form name="adres dostawy">
    <br/>

    <?php echo "<input  type='hidden' name='total' id='total' value=" . $total. ">" ?>
    <label>Typ dostawy (O-onsite, D-dostawa pod adres): </label> <input  type="text" name="delivery_type" id="delivery_type" ><br/>
    <br/>
    <label>Numer stolika (jeśli wybrano "Onsite", pusty oznacza odbiór przy kasie): </label> <input  type="number" name="table_nb" id="table_nb"><br/>
    <br/>
    <paragraf>Dane dostawy (jeśli wybrano typ dostawy "Dostawa"):</paragraf><br/>
    <label>Pożądana data i godzina dostawy: </label> <input  type="datetime-local" name="delivery_dt" id="delivery_dt" ><br/>
    <label>Imię i Nazwisko: </label> <input  type="text" name="name" id="name" ><br/>
    <label>Adres: </label> <input  type="text" name="address" id="address" ><br/>
    <label>Adres email: </label><input type="email" id="email" name="email" ><br/>
    <label>Telefon: </label> <input  type="text" name="phone" id="phone"><br/>
    </br><button class="baton" type="submit" formaction="confirm_and_pay.php" formmethod="post">Potwierdz zamowienie i przejdz do platnosci</button>
</form>
</div>
</div>
</body>
<?php include 'menuRight.php'; ?>


