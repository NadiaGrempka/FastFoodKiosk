<?php
    if (session_status()!=PHP_SESSION_ACTIVE) session_start();
    require_once("db_connection.php"); //wlączenie skrypu db_connection, gdzie inicjalizuje sie polaczenie z baza danych
//    include 'main_menu.php'; //wyswietla menu

    //zapytanie, które przygotowuje dane do raportu "Produkty i suma sprzedaży"
    $query_report1 = "select p.name as name, sum(oi.qty*oi.unit_price) as income from products as p, order_items as oi where p.id = oi.product_id group by p.name order by p.name";
    $report1 = $db_conn->prepare($query_report1);
    $report1->execute();

    //zapytanie, które przygotowuje dane do raportu "Liczba złożonych zamówień i średnia kwota zamówienia"
    $query_report2 = "select count(*) as order_count, min(total) as total_min, avg(total) as total_avg, max(total) as total_max  from orders";
    $report2 = $db_conn->prepare($query_report2);
    $report2->execute();
?>

<?php include 'menuLeft.php'; ?>
<div class="itemmiddle">
    <div id="report1">
        <table class="tabela">
            <caption> Raport sprzedaży produktów</caption>
            <tr>
                <th>Nazwa produktu</th>
                <th>Suma sprzedaży</th>
            </tr>
            <?php foreach ($report1 as $row) { ?>
            <tr>
                <td><?php echo $row['name'] . " PLN"; ?></td>
                <td style="text-align: right"><?php echo $row['income']. " PLN"; ?></td>
            </tr>
            <?php } ?>
        </table>
    </div>
    <br/><br/>
<!--    <div id="report2">-->
<!--        <table class="tabela">-->
<!--            <caption> Raport liczba złożonych zamówień, min-średnia-maks kwota zamówienia</caption>-->
<!--            <tr>-->
<!--                <th>Liczba złożonych zamówień</th>-->
<!--                <th>Min kwota zamówienia</th>-->
<!--                <th>Średnia kwota zamówienia</th>-->
<!--                <th>Maks kwota zamówienia</th>-->
<!--            </tr>-->
<!--            --><?php //foreach ($report2 as $row) { ?>
<!--                <tr>-->
<!--                    <td style="text-align: center">--><?php //echo $row['order_count'] ; ?><!--</td>-->
<!--                    <td style="text-align: center">--><?php //echo $row['total_min']. " PLN"; ?><!--</td>-->
<!--                    <td style="text-align: center">--><?php //echo round($row['total_avg'], 2). " PLN"; ?><!--</td>-->
<!--                    <td style="text-align: center">--><?php //echo $row['total_max']. " PLN"; ?><!--</td>-->
<!--                </tr>-->
<!--            --><?php //} ?>
<!--        </table>-->
<!--    </div>-->
</div>
<?php include 'menuRight.php'; ?>




