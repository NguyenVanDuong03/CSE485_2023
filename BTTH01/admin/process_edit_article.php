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
?>


<?php
function updateArticle($checkID, $name)
{
    global $conn;
    $stmt = $conn->prepare("UPDATE baiviet SET tieude = :name WHERE ma_bviet = :id");
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':id', $checkID);
    $result = $stmt->execute();
    if ($result) {
        return true;
    }
    return false;
    
}

// Kiểm tra xem form đã được gửi đi hay chưa
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['txtCatName'])) {
    $id = $_POST['id'];
    $nameOfAut = $_POST['txtCatName'];
    $udateNew = updateArticle($id, $nameOfAut);
    if ($udateNew) {
        echo '<script>alert("Cập nhật thành công!"); window.location.href = "article.php";</script>';
    } else {
        echo '<script>alert("Cập nhật không thành công!"); window.location.href = "article.php";</script>';
    }
}
?>