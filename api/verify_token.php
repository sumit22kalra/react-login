<?php
require "vendor/autoload.php";
use Firebase\JWT\JWT;
use Firebase\JWT\Key;


// Allow requests from localhost:5173 (React Vite)
header("Access-Control-Allow-Origin: http://localhost:5174");

// Allow specific headers
header("Access-Control-Allow-Headers: Content-Type, Authorization");

// Allow specific HTTP methods
header("Access-Control-Allow-Methods: POST");

$secret_key = "your_secret_key";

$headers = apache_request_headers();
$authHeader = isset($headers['Authorization']) ? $headers['Authorization'] : "";

if (!$authHeader) {
    echo json_encode(["success" => false, "message" => "Token missing"]);
    exit();
}

$token = str_replace("Bearer ", "", $authHeader);

try {
    $decoded = JWT::decode($token, new Key($secret_key, 'HS256'));
    echo json_encode(["success" => true, "user" => $decoded]);
} catch (Exception $e) {
    echo json_encode(["success" => false, "message" => "Invalid token"]);
}
?>
