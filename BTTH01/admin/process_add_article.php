<?php
$host = 'localhost';
$db = 'btth01_cse485';
$user = 'root';
$pass = '';

try {
    $conn = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
} catch (PDOException $e) {
    echo $e->getMessage();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['txtCatName'])) {
    $nameOfArticle = $_POST['txtCatName'];

    // Thêm bài viết vào cơ sở dữ liệu
    $stmt = $conn->prepare("INSERT INTO baiviet (tieude) VALUES (:tieude)");
    $stmt->bindParam(':tieude', $nameOfArticle);
    $stmt->execute();

    // Chuyển hướng về trang article.php sau khi thêm thành công
    header('Location: article.php');
    exit();
}
?>
