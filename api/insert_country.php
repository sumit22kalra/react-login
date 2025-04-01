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

if (!isset($data->name) || !isset($data->code)) {
    echo json_encode(["success" => false, "message" => "Country name and code are required."]);
    exit();
}

$name = $data->name;
$code = $data->code;

try {
    $query = "INSERT INTO countries (name, code) VALUES (:name, :code)";
    $stmt = $conn->prepare($query);
    $stmt->bindParam(":name", $name, PDO::PARAM_STR);
    $stmt->bindParam(":code", $code, PDO::PARAM_STR);
    
    if ($stmt->execute()) {
        echo json_encode(["success" => true, "message" => "Country added successfully."]);
    } else {
        echo json_encode(["success" => false, "message" => "Failed to add country."]);
    }
} catch (Exception $e) {
    echo json_encode(["success" => false, "message" => "Error: " . $e->getMessage()]);
}
?>
