<?php
require "../db.php"; // Include your database connection

//header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Origin: http://localhost:5173");
header("Access-Control-Allow-Headers: Content-Type");

$data = json_decode(file_get_contents("php://input"), true);
$sql = "select * from states"; // $data['sql_query'] ?? '';

if (empty($sql)) {
    http_response_code(400);
    echo json_encode("SQL query is empty.");
    exit;
}


try {
    // Prevent dangerous queries (e.g., DROP, DELETE, etc.)
    if (preg_match('/\b(drop|truncate|delete)\b/i', $sql)) {
        throw new Exception("Dangerous SQL commands are not allowed.");
    }

    $stmt = $pdo->prepare($sql);
    $stmt->execute();

    // If SELECT, return rows
    if (stripos(trim($sql), 'SELECT') === 0) {
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($rows);
    } else {
        echo json_encode("✅ Query executed successfully.");
    }

} catch (Exception $e) {
    http_response_code(500);
    echo json_encode("Error: " . $e->getMessage());
}
?>
