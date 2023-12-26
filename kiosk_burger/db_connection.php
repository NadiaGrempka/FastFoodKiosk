<?php
if (session_status() != PHP_SESSION_ACTIVE) session_start();
try {
    //phpinfo();
    //die();
    $user='root';
    $pass='';
    $db_conn = new PDO('mysql:host=localhost;dbname=kiosk', $user, $pass, array(PDO::ATTR_PERSISTENT => true)); // stale polaczenie z baza
} catch (PDOException $e) {
    print "BŁĄD! NIe udało się połączyć z bazą danych: " . $e->getMessage() . "<br/>";
    die();
}