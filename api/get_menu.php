<?php
include 'db.php';

$stmt = $conn->query("SELECT * FROM navigation_menu ORDER BY position ASC");
$menu = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($menu);
?>
