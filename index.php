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



// SQL-запрос для выборки всех записей из таблицы info
$sql = "SELECT * FROM info";
$result = $conn->query($sql);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Список записей</title>
    <link rel="stylesheet" href="styles/main.css">
    <style>
   
    </style>
    
</head>
<body>

    <?php 
        require_once("header.php");
    ?>


    <div>
    <?php

        // Отображение имени пользователя

    ?>

    </div>
            
    <div class="main" id="parrent">
        <?php
        $str = "teststr";
        // Вывод данных, если они есть
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                ?>
                <a class="hook" href="/info.php?id=<?php echo $row['id']; ?>"  
                onmouseenter = songName("<?php echo $row["thameSound"]; ?>")>
                    <div class="image">
                        <img src="<?php echo $row["logo"]; ?>">
                    </div>
                    <?php
                        echo $row["thameSound"];
                    ?>
                </a>
                <a href="/player.php?id=<?php echo $row["id"] ?>">Музыка<?php echo $row["id"] ?></a>
                <a href="/edit.php?id=<?php echo $row["id"] ?>">Изменить<?php echo $row["id"] ?></a>
                

                <?php
            }
        } else {
            echo "Записей не найдено";
        }
    
        ?>
    </div>

</body>
    <script src="song.js"></script>
</html>

<?php
$conn->close();
?>
