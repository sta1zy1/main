<?php
// Подключение к базе данных
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "metal_db";

$conn = new mysqli($servername, $username, $password, $dbname);

// Проверка подключения
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Проверка наличия файла музыки
if ($_SERVER["REQUEST_METHOD"] == "POST") {
if ($_FILES['music']['error'] === UPLOAD_ERR_OK) {
    $music_name = $_FILES['music']['name'];
    $music_tmp_name = $_FILES['music']['tmp_name'];
    
    // Сохранение файла музыки в нужное место на сервере
    $upload_dir = 'music/';
    move_uploaded_file($music_tmp_name, $upload_dir . $music_name);
    
    // Получение данных о группе
    $group_id = $_POST['group'];
    
    // Сохранение информации о музыке в базе данных
    $sql = "INSERT INTO music (group_name, music, user_id) VALUES ('$group_id', '$music_name', 1)";
    
    if ($conn->query($sql) === TRUE) {
        echo "Музыка успешно добавлена";
    } else {
        echo "Ошибка: " . $sql . "<br>" . $conn->error;
    }
} else {
    echo "Ошибка при загрузке файла музыки";
}
}

$conn->close();
?>


<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Добавить музыку</title>
</head>
<body>
    <h2>Добавить музыку</h2>
    <form action="upload_music.php" method="post" enctype="multipart/form-data">
        <label for="music">Выбрать музыку:</label>
        <input type="file" name="music" id="music" accept="audio/mp3">
        
        <label for="group">Выбрать группу:</label>
        <select name="group" id="group">
            <?php
            // Подключение к базе данных
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "metal_db";
            
            $conn = new mysqli($servername, $username, $password, $dbname);
            
            // Проверка подключения
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }
            
            // Запрос на получение списка групп из базы данных
            $sql = "SELECT id, group_name FROM info";
            $result = $conn->query($sql);
            
            // Вывод опций для выбора группы
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo "<option value='" . $row["id"] . "'>" . $row["group_name"] . "</option>";
                }
            }
            $conn->close();
            ?>
        </select>
        
        <input type="submit" value="Загрузить музыку">
    </form>
</body>
</html>

