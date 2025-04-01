<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET");

include "db.php"; // Database connection

// Check if `category_id` or `product_id` is passed in the URL
$category_id = isset($_GET['category_id']) ? intval($_GET['category_id']) : null;
$product_id = isset($_GET['product_id']) ? intval($_GET['product_id']) : null;

// Query for All Products
if (!$category_id && !$product_id) {
    $sql = "SELECT p.product_id, p.name, p.description, p.price, p.stock, c.name AS category_name, p.image_url
            FROM products p
            JOIN categories c ON p.category_id = c.category_id";
}

// Query for Products by Category
elseif ($category_id) {
    $sql = "SELECT p.product_id, p.name, p.description, p.price, p.stock, c.name AS category_name, p.image_url
            FROM products p
            JOIN categories c ON p.category_id = c.category_id
            WHERE p.category_id = $category_id";
}

// Query for Product by ID
elseif ($product_id) {
    $sql = "SELECT p.product_id, p.name, p.description, p.price, p.stock, c.name AS category_name, p.image_url
            FROM products p
            JOIN categories c ON p.category_id = c.category_id
            WHERE p.product_id = $product_id";
}

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $data = [];
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
    echo json_encode(["status" => "success", "data" => $data]);
} else {
    echo json_encode(["status" => "error", "message" => "No products found"]);
}

$conn->close();
?>
