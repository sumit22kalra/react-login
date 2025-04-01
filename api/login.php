<?php
require "db.php";
require "vendor/autoload.php";
use Firebase\JWT\JWT;
use Firebase\JWT\Key;
// header("Access-Control-Allow-Origin: *");


//header("Content-Type: application/json; charset=UTF-8");

// Allow requests from localhost:5173 (React Vite)
header("Access-Control-Allow-Origin: http://localhost:5174");

// Allow specific headers
header("Access-Control-Allow-Headers: Content-Type, Authorization");

// Allow specific HTTP methods
header("Access-Control-Allow-Methods: POST");


// If the request method is OPTIONS, stop execution (preflight request)
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit();
}
$secret_key = "your_secret_key"; // Change this

$data = json_decode(file_get_contents("php://input"));

if (!isset($data->email) || !isset($data->password)) {
    echo json_encode(["success" => false, "message" => "Email & Password required"]);
    exit();
}

// $email = htmlspecialchars(strip_tags($data->email));
// $password = htmlspecialchars(strip_tags($data->password));


$email = $data->email;
$password = $data->password;
$query = "SELECT * FROM users WHERE email = :email LIMIT 1";
$stmt = $conn->prepare($query);
$stmt->bindParam(":email", $email);
$stmt->execute();
$user = $stmt->fetch(PDO::FETCH_ASSOC);

if ($user && password_verify($password, $user['password'])) {
    $payload = [
        "iss" => "localhost",
        "aud" => "localhost",
        "iat" => time(),
        "exp" => time() + (60 * 60), // Token expires in 1 hour
        "user_id" => $user['id'],
        "user_name" => $user['username'],
        "email" => $user['email']
    ];

    $jwt = JWT::encode($payload, $secret_key, 'HS256');

    echo json_encode(["success" => true, "token" => $jwt]);
} else {
    echo json_encode(["success" => false, "message" => "Invalid credentials" ]);
}
?>
