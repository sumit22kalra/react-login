<?php
require "db.php"; // Include your database connection

//header("Content-Type: application/json; charset=UTF-8");

// Allow requests from localhost:5173 (React Vite)
header("Access-Control-Allow-Origin: http://localhost:5173");

// Allow specific headers
header("Access-Control-Allow-Headers: Content-Type, Authorization");

// Allow specific HTTP methods
header("Access-Control-Allow-Methods: POST");

$data = json_decode(file_get_contents("php://input"));

if (!isset($data->name) || !isset($data->country_id)) {
    echo json_encode(["success" => false, "message" => "State name and Country Code are required."]);
    exit();
}

$name = $data->name;
$country_id = $data->country_id;

try {
    $query = "INSERT INTO state (name, country_id) VALUES (:name, :country_id)";
    $stmt = $conn->prepare($query);
    $stmt->bindParam(":name", $name, PDO::PARAM_STR);
    $stmt->bindParam(":country_id", $country_id, PDO::PARAM_STR);
    
    if ($stmt->execute()) {
        echo json_encode(["success" => true, "message" => "Country added successfully."]);
    } else {
        echo json_encode(["success" => false, "message" => "Failed to add country."]);
    }
} catch (Exception $e) {
    echo json_encode(["success" => false, "message" => "Error: " . $e->getMessage()]);
}
?>
