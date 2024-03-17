<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
    


<?php
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

// Получение id из URL
$id = $_GET["id"];

// SQL-запрос для выборки данных по указанному id
$sql = "SELECT * FROM info WHERE id = $id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Вывод данных
    $row = $result->fetch_assoc();
    echo "<h2>Данные с ID $id</h2>";
    ?>
    <img class="logo" src="
    <?php
    echo $row["logo"] ;
    ?> " alt=""> <?php
    echo "<p>Описание: " . $row["about"] . "</p>";
} else {
    echo "Данные не найдены";
}

$conn->close();
?>

</body>
</html>