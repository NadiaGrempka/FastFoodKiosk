<?php
require_once("db_connection.php");

if ((!empty($_SESSION['basket'])) ) {
    try {
        $db_conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        //rozpoczęcie transakcji
        $db_conn->beginTransaction();
        //zapisanie zamowienie do orders
        $session_id = session_id();
        $status = 'S';
        $order_dt = date("Y-m-d H:i:s");
        $preparation_time = 10; //tymczasowo ustawione na zero
        if (isset($_POST['table_nb'])) $table_nb = NULL; else $table_nb = $_POST['table_nb'];
        $sql = "INSERT INTO `orders` (`session_id`, `status`, `order_date_time`, `preparation_time`, `delivery_type`, `table_nb`, `total`, `delivery_adress`, `delivery_email`, `delivery_phone`, `delivery_client_name`, `delivery_date_time`)" .
            " VALUES (:session_id, :status, :order_dt, :preparation_time, :d_type, :table_nb, :total , :d_address, :d_email, :d_phone, :d_cname, :d_dt)";
        $stmt = $db_conn->prepare($sql);
        $stmt->bindParam(':session_id', $session_id);
        $stmt->bindParam(':status', $status);
        $stmt->bindParam(':order_dt', $order_dt);
        $stmt->bindParam(':preparation_time', $preparation_time);
        $stmt->bindParam(':total', $_POST['total']);
        $stmt->bindParam(':d_type', $_POST['delivery_type']);
        $stmt->bindParam(':table_nb', $_POST['table_nb']);
        $stmt->bindParam(':d_address', $_POST['address']);
        $stmt->bindParam(':d_email', $_POST['email']);
        $stmt->bindParam(':d_phone', $_POST['phone']);
        $stmt->bindParam(':d_cname', $_POST['name']);
        $stmt->bindParam(':d_dt', $_POST['delivery_dt']);
        $stmt->execute();
        //pobranie id wstawionego zamowienia
        $order_id = $db_conn->lastInsertId();
        setcookie('order_id', $order_id);

        //zapisz pozycje koszyka tabeli do orders_items
        $basket = $_SESSION['basket'];
        //koszyk sklada sie z wierszy, kazdy wiesz jest tablica zawierajaca wybrany produkt
        foreach ($basket as $key => $prod) {
            //zapisanie pozycji z koszyka do tabeli order_items
            $date = date("Y-m-d H:i:s");
            $sql = "INSERT INTO `order_items` (`order_id`, `product_id`, `date_time`, `qty`, `unit_price`, `session_id`) VALUES (:order_id, :product_id, :date_time, :qty, :unit_price, :session_id)";
            $stmt = $db_conn->prepare($sql);
            $stmt->bindParam(':order_id', $order_id);
            $stmt->bindParam(':product_id', $prod['product_id']);
            $stmt->bindParam(':date_time', $date);
            $stmt->bindParam(':qty', $prod['qty']);
            $stmt->bindParam(':unit_price', $prod['unit_price']);
            $stmt->bindParam(':session_id', $session_id);
            $stmt->execute();
        }
        //zatwierdzenie transakcji
        $db_conn->commit();
        //wyczysc koszyl
        //$_SESSION['basket']=array();

 ?>

<?php include 'menuLeft.php'; ?>
<div class="itemmiddle">
    </br><p>Zlecenie utworzone i opłacone, czas oczekiwania: <?php echo $preparation_time; ?> min </p></br>
    <form name="Potwierdzenie">
        <paragraf>Potwierdzenie zamowienia</paragraf><br/>
        <label>Adres email: </label><input type="email" id="email" name="email" ><br/>
    </br><button class="baton" type="submit" formaction="send_email.php" formmethod="post">Wyslij Email</button>
        <button class="baton" type="submit" formaction="send_confirmation.php" formmethod="post">Wydrukuj</button>
    </form>
</div>
<?php include 'menuRight.php'; ?>

<?php
        }
        catch (Exception $e) {
            //jesli błąd w transakcji, to wycofanie wszystkich operacji
            $db_conn->rollBack();
            echo "BŁĄD: Zapis do bazy danych się nie powiódł: " . $e->getMessage();
            die();
        }
}
?>
