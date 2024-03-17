
<?php
// Подключение к базе данных
$servername = "localhost"; // Имя сервера базы данных (обычно localhost)
$username = "root"; // Ваш логин для подключения к базе данных
$password = ""; // Ваш пароль для подключения к базе данных
$dbname = "metal_db"; // Имя вашей базы данных

$conn = new mysqli($servername, $username, $password, $dbname);

// Проверка соединения
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Получение данных из формы регистрации
$name = $_POST['name'];
$email = $_POST['email'];
$password = $_POST['password'];

// Хеширование пароля (рекомендуется использовать более безопасные методы, например, password_hash)
$hashed_password = md5($password);

// Подготовка и выполнение запроса к базе данных
$sql = "INSERT INTO users (name, email, password, role) VALUES ('$name', '$email', '$hashed_password', 0)";


if ($conn->query($sql) === TRUE) {
    echo "Регистрация прошла успешно!";
} else {
    echo "Ошибка при регистрации: " . $conn->error;
}

// Закрытие соединения с базой данных
$conn->close();
?>


