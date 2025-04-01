<?php
require "db.php"; // Include your database connection

// Allow requests from localhost:5173 (React Vite)
header("Access-Control-Allow-Origin: http://localhost:5173");

// Allow specific headers
header("Access-Control-Allow-Headers: Content-Type, Authorization");

$data = json_decode(file_get_contents("php://input")); // Get JSON input from request

if(isset($data->id) && isset($data->name) && isset($data->code)) {
    $query = "UPDATE countries SET name = :name, code = :code WHERE id = :id";
    $stmt = $conn->prepare($query);
    
    $stmt->bindParam(':id', $data->id);
    $stmt->bindParam(':name', $data->name);
    $stmt->bindParam(':code', $data->code);
    
    if($stmt->execute()) {
        echo json_encode(["message" => "Country updated successfully"]);
    } else {
        echo json_encode(["error" => "Failed to update country"]);
    }
} else {
    echo json_encode(["error" => "Invalid data"]);
}
?>
