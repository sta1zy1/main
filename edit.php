<?php
session_start();

$user_name = isset($_SESSION['user_name']) ? $_SESSION['user_name'] : 'test';
$user_role = isset($_SESSION['role']) ? $_SESSION['role'] : 'test_role';

// Подключение к базе данных
$servername = "127.0.0.1"; 
$username = "root";
$password = "";
$dbname = "metal_db";
if($user_role != '1'){
    header("Location: /");
}

$conn = new mysqli($servername, $username, $password, $dbname);

// Проверка подключения
if ($conn->connect_error) {
    die("Ошибка подключения к базе данных: " . $conn->connect_error);
}

// Обработка отправленной формы


// Получение ID статьи из параметра запроса
// Проверка наличия параметра id в URL
if (!isset($_GET["id"])) {
    echo "Ошибка: Не указан идентификатор статьи для редактирования.";
    exit;
}

$id = $_GET["id"];


// Получение данных о статье из базы данных
$sql = "SELECT * FROM info WHERE id=$id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Вывод формы для редактирования данных статьи
    while($row = $result->fetch_assoc()) {
        $logo = $row["logo"];
        $about = $row["about"];
    ?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edit Page</title>
    </head>
    <body>
        <?php require_once("header.php"); ?>
        <h2>Редактировать данные</h2>
        <!-- Форма для редактирования данных -->
        <form method="post" action="/update.php">
            <input type="hidden" name="id" value="<?php echo $id; ?>">
            <label for="logo">Логотип:</label>
            <input type="text" name="logo" value="<?php echo $logo; ?>" required><br>
            <!-- Добавление поля для редактирования содержания статьи -->
            <textarea name="about" rows="6" required><?php echo $about; ?></textarea><br>
            <input type="submit" value="Сохранить изменения">
        </form>
    </body>
    </html>
    <?php
    }
} else {
    echo "Статья не найдена";
}

$conn->close();
?>
