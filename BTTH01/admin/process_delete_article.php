<?php
$host = 'localhost';
$db = 'btth01_cse485';
$user = 'root';
$pass = '';
//Buoc 1: Connect DB server
try {
    $conn = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
} catch (PDOException $e) {
    echo $e->getMessage();
}

if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['id'])) {
    $idToDelete = $_GET['id'];

    // Xóa bài viết từ cơ sở dữ liệu
    $stmt = $conn->prepare("DELETE FROM baiviet WHERE ma_bviet = :id");
    $stmt->bindParam(':id', $idToDelete, PDO::PARAM_INT);
    $stmt->execute();

    // In thông báo xóa thành công
    echo '<script>alert("Xóa bài viết thành công!"); window.location.href = "article.php";</script>';
    exit();
} else {
    // Xử lý khi không có thông tin id hoặc không phải là phương thức GET
    echo 'Invalid request';
}
?>