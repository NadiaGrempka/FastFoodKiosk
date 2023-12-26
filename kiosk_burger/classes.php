<?php
if (session_status()!=PHP_SESSION_ACTIVE) session_start();

//skrypt do tworzenia produktow
class DBController {
    private $user = "root";
    private $pass = "";
    private $dbname='ng_food_kiosk';
    public $conn;

    function __construct()
    {
        $this->conn = $this->connectDB();
    }

    function connectDB()
    {
        $conn = new PDO('mysql:host=localhost;dbname='.$this->dbname, $this->user, $this->pass, array(PDO::ATTR_PERSISTENT => true)); // stale polaczenie z baza
        return $conn;
    }

}

abstract class Product {
    public $id, $name, $unit_price, $description;

    // konstruktor do zapisu produktu
    function __construct($name, $unit_price, $description) {
        $this->name = $name;
        $this->unit_price = $unit_price;
        $this->description = $description;
    }
}

class Meal extends Product {
    public $preparation_time;
    function __construct($name, $unit_price, $description, $preparation_time) {
        parent::__construct($name, $unit_price,  $description);
        $type='M'; //typ produktu (meal)
        $this->preparation_time = $preparation_time;
        $sql = "INSERT INTO `products` (`name`, `unit_price`, `type`, `description`, `preparation_time`)" .
            " VALUES (:name, :unit_price, :type, :description, :preparation_time)";
        $db_conn = new DBController();
        $stmt = $db_conn->conn->prepare($sql);
        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':unit_price', $this->unit_price);
        $stmt->bindParam(':type', $type);
        $stmt->bindParam(':description', $this->description);
        $stmt->bindParam(':preparation_time', $this->preparation_time);
        $stmt->execute();
        //pobranie id wstawionego zamowienia
        $this->id = $db_conn->conn->lastInsertId();
    }
}

class Beverage extends Product {
    function __construct($name, $unit_price, $description) {
        parent::__construct($name, $unit_price,  $description);
    }
}
class Addon extends Product {
    function __construct($name, $unit_price, $description) {
        parent::__construct($name, $unit_price,  $description);
    }
}

/*
$burger1 = new Meal("Burger King", 20, "Burger King rules", 10);
$cola = new Beverage("Cola", 5, "Coca Cola");
$ketchup = new Addon("Heinz", 5, "Ketchup Heinz");
var_dump($burger1);
*/
?>
