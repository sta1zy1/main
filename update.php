<?php
session_start();

$user_name = isset ($_SESSION['user_name']) ? $_SESSION['user_name'] : 'test';
$user_role = isset ($_SESSION['role']) ? $_SESSION['role'] : 'test_role';

// Подключение к базе данных
$servername = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "metal_db";
if ($user_role != '1') {
    header("Location: /");
}

$conn = new mysqli($servername, $username, $password, $dbname);

// Проверка подключения
if ($conn->connect_error) {
    die ("Ошибка подключения к базе данных: " . $conn->connect_error);
}
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Получение данных из формы
    $id = $_POST["id"];
    $logo = $_POST["logo"];
    $about = $_POST["about"];

    // SQL-запрос для обновления данных в таблице
    $sql = "UPDATE info SET logo='$logo', about='$about' WHERE id=$id";

    if ($conn->query($sql) === TRUE) {
        echo "Данные успешно обновлены";
    } else {
        echo "Ошибка при обновлении данных: " . $conn->error;
    }
}
?>