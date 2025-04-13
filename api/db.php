<?php
$host = "103.133.215.103";
$db_name = "greatbu1_react";
$username = "greatbu1_react";
$password = "EdhwPUgfTueEZy6zebAE";
$port = "3306"; 


try {
    $conn = new PDO("mysql:host=$host;port=$port;dbname=$db_name", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
    die();
}
?>
