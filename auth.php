<?php
session_start(); // Начало сессии

if (isset($_SESSION['user_id'])) {
    // Если пользователь уже авторизован, перенаправляем на главную страницу
    
    exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Обработка данных формы авторизации

    // Подключение к базе данных
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "metal_db";

    $conn = new mysqli($servername, $username, $password, $dbname);

    // Проверка соединения
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Получение данных из формы авторизации
    $login_email = $_POST['login_email'];
    $login_password = $_POST['login_password'];

    // Хеширование пароля для проверки (рекомендуется использовать более безопасные методы, например, password_hash)
    $hashed_login_password = md5($login_password);

    // Подготовка и выполнение запроса к базе данных для авторизации
    $sql = "SELECT * FROM users WHERE (name='$login_email' OR email='$login_email') AND password='$hashed_login_password'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Пользователь успешно авторизован
        $user_data = $result->fetch_assoc();
        

        // Установка сессионных переменных
        $_SESSION['user_id'] = $user_data['id'];
        $_SESSION['user_name'] = $user_data['name'];    
        $_SESSION['role'] = $user_data['role'];
        echo $_SESSION['user_id']."<br>";
        echo $_SESSION['user_name']."<br>";
        echo $_SESSION['role']."<br>";

        
        // Редирект на главную страницу
        header("Location: index.php");
        exit();
    } else {
        $error_message = "Неверный логин или пароль";
    }

    // Закрытие соединения с базой данных
    $conn->close();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Авторизация</title>
</head>
<body>
    <?php 
        require_once("header.php");
    ?>

<h2>Авторизация</h2>

<?php
if (isset($error_message)) {
    echo "<p style='color: red;'>$error_message</p>";
}
?>

<form action="auth.php" method="post">
    <label for="login_email">Логин или Email:</label>
    <input type="text" id="login_email" name="login_email" required><br>

    <label for="login_password">Пароль:</label>
    <input type="password" id="login_password" name="login_password" required><br>

    <input type="submit" value="Войти">
</form>

</body>
</html>
