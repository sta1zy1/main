<header>
    <link rel="stylesheet" href="styles/header.css">
   <h1 id="nav-title"><a href="/">METAL</a></h1>
   <nav>
      <ul>
          <?php
            if($user_name = isset($_SESSION['user_name'])){
                echo '<li> <a href="logout.php"> Выход </a> </li>';
                if($user_role == 1){
                    echo '<li><a href="create.php">Создать статью </a></li>';
                }
                ?>
                <li><div id="user"><?php 
               
                echo '<div>'.strtoupper( $_SESSION['user_name'][0]).'</div>';
                
                ?>
                </div></li>
                <?php
            }

            
            else{
                echo '<li><a href="auth.php">Вход</a></li>';
                echo '<li><a href="reg.php">Регистрация</a></li>';
            }

             

          ?>
      </ul>
   </nav>          
</header>