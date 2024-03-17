<?php
session_start(); // Начало сессии

// Подключение к базе данных
$servername = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "metal_db";

$conn = new mysqli($servername, $username, $password, $dbname);

// Проверка подключения
if ($conn->connect_error) {
    die("Ошибка подключения к базе данных: " . $conn->connect_error);
}

// Получение имени пользователя из сессии
$user_name = isset($_SESSION['user_name']) ? $_SESSION['user_name'] : '';
$user_role = isset($_SESSION['role']) ? $_SESSION['role'] : '';
$group_id = $_GET["id"];
$group_query = "SELECT * FROM info WHERE id = $group_id";
$group_result = $conn->query($group_query);

while ($group_row = $group_result->fetch_assoc()) {
    echo "<h2>" . strtoupper($group_row["group_name"]) . "</h2> <hr>";
}

$music_query = "SELECT * FROM music WHERE group_name = $group_id";
$result = $conn->query($music_query);

while ($row = $result->fetch_assoc()) {
    $music_file = $row["music"];
    $music_id = $row["id"];
    echo $row["music"];
    echo "<p><audio controls><source src='music/$music_file' type='audio/mp3'>Your browser does not support the audio element.</audio></p>";
}

$conn->close();
?>
