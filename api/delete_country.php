<?php
require "db.php"; // Include your database connection

// Allow requests from localhost:5173 (React Vite)
header("Access-Control-Allow-Origin: http://localhost:5173");

// Allow specific headers
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header("Access-Control-Allow-Methods: POST");
$data = json_decode(file_get_contents("php://input"));

if (isset($data->id)) {
    $id = $data->id;
    $query = "DELETE FROM countries WHERE id = :id";
    $stmt = $conn->prepare($query); 
    $stmt->bindParam(':id', $data->id); 
 

    if ($stmt->execute()) {
        echo json_encode(["message" => "Country deleted successfully"]);
    } else {
        echo json_encode(["message" => "Failed to delete country"]);
    }
} else {
    echo json_encode(["message" => "Invalid request"]);
}
?>
