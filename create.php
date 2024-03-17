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

    // Обработка отправленной формыs
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Получение данных из формы
        $logo = $_POST["logo"];
        $about = $_POST["about"];

        // SQL-запрос для добавления данных в таблицу
        $sql = "INSERT INTO info (logo, about) VALUES ('$logo', '$about')";

        if ($conn->query($sql) === TRUE) {
            echo "Данные успешно добавлены";
        } else {
            echo "Ошибка при добавлении данных: " . $conn->error;
        }
        
    }




$conn->close();



?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Page</title>

</head>
<body>
    <?php 
        require_once("header.php");
    ?>
    <h2>Добавить данные</h2>

    <!-- Форма для ввода данных -->
    <form method="post" action="<?php echo $_SERVER["PHP_SELF"]; ?>">
        <label for="logo">Логотип:</label>
        <input type="text" name="logo" required><br>
        
        

    <!-- Додавання кнопок для форматування або інших функцій -->
    <!-- Наприклад, використовуючи бібліотеку CKEditor -->
    <script src="https://cdn.ckeditor.com/ckeditor5/37.0.1/classic/ckeditor.js"></script>
    <textarea name="about" id="formatted_text"></textarea>
    <script>
        ClassicEditor
            .create(document.querySelector('#formatted_text'))
            .catch(error => {
                console.error(error);
            });
    </script>

        

        <input type="submit" value="Добавить данные">


    </form>

</body>
</html>
