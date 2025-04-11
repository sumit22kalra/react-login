<?php
require "../db.php"; // Include your database connection

 header("Content-Type: application/json; charset=UTF-8");

// Allow requests from localhost:5173 (React Vite)
header("Access-Control-Allow-Origin: http://localhost:5173");

// Allow specific headers
header("Access-Control-Allow-Headers: Content-Type, Authorization");

// Allow specific HTTP methods
header("Access-Control-Allow-Methods: POST");
try {
    $query = "SELECT * FROM states";
    $stmt = $conn->prepare($query); 
    $stmt->execute();

    $countries = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode(["success" => true, "data" => $countries]);
} catch (Exception $e) {
    echo json_encode(["success" => false, "message" => "Error fetching countries: " . $e->getMessage()]);
}
 
?>