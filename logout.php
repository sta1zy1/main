<?php
session_start(); // Начало сессии

// Уничтожение сессии
session_destroy();

// Редирект на страницу входа (или любую другую страницу)
header("Location: auth.php");
exit();
?>
