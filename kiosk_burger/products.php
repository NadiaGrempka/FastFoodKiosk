<?php
if (session_status()!=PHP_SESSION_ACTIVE) session_start();
require_once("db_connection.php"); //wlączenie skrypu db_connection, gdzie inicjalizuje sie polaczenie z baza danych

//skrypt zwraca produkty o danym typie
if (!empty($_REQUEST['product_type'])) {
        //include 'main_menu.php'; //wyswietla menu
        $product_type = $_REQUEST['product_type']; //pobranie przekazanego typu produktu
        //pobranie z bazy danych listy prouktów o określonym typie
        $query_select_products = "SELECT `id`, `name`, `unit_price`, `qty_on_stock`, `type`, `preparation_time`, `picture_id`, `session_id`, `description` from products where `type` = ? order by `name`";
        $products = $db_conn->prepare($query_select_products);
        $products->execute([$product_type]);
    }
?>

<?php include 'menuLeft.php'; ?>
    <div id="product_table" class="itemmiddle">
        <table class="tabela">
            <tr>
                <th>Nazwa produktu</th>
                <th>Opis produktu</th>
                <th>Cena jednostkowa</th>
                <th></th>
            </tr>
            <?php foreach ($products as $row) { ?>
                <tr>
                    <td><?php echo $row['name']; ?></td>
                    <td><?php echo $row['description']; ?></td>
                    <td style="text-align: right"><?php echo $row['unit_price']. " PLN"; ?></td>
                    <td> <?php echo  "<a href='add_to_basket.php?product_id=".$row['id']. "&prod_name=". $row['name'] . "&unit_price=". $row['unit_price'] ."&product_type=$product_type'"."><label class='dodaj'>Dodaj</label></a>";?> </td>
                </tr>
            <?php } ?>
        </table>
    </div>
<?php include 'menuRight.php'; ?>
<!--</form>-->
<!--</body>-->
<!--</html>-->

