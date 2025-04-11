<?php
header("Access-Control-Allow-Origin: http://localhost:5173");
header("Content-Type: application/json");

require "../db.php"; // Include your database connection

$query = "SELECT states.id, states.name, countries.name AS country_name 
          FROM states 
          INNER JOIN countries ON states.country_id = countries.id
          ORDER BY states.name ASC";
$stmt = $conn->prepare($query);
$stmt->execute();

$states = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($states);
?>
