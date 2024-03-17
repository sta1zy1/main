<!DOCTYPE html>
<html>
<head>
    <title>Регистрация</title>
</head>
<body>

<h2>Регистрация пользователя</h2>

<form action="register.php" method="post">
    <label for="name">Имя:</label>
    <input type="text" id="name" name="name" required><br>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required><br>

    <label for="password">Пароль:</label>
    <input type="password" id="password" name="password" required><br>

    <input type="submit" value="Зарегистрироваться">
</form>

</body>
</html>
