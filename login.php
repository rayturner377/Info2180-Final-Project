

<?php
  session_start();
	require 'connection.php';

  $user = filter_input(INPUT_POST,"email", FILTER_SANITIZE_STRING);
  $pass = md5(filter_input(INPUT_POST,"pass", FILTER_SANITIZE_STRING));

  $host = 'localhost';
  $username = 'root';
  $password = '';
  $dbname = 'db';

  $pdo = new PDO("mysql:host=$host;dbname=$dbname",$username,$password);


  if($user != "" && $pass != "") {
    try {
      $query = "select * from `Users` where `email`=:email and `password`=:pwd";
      $stmt = $pdo->prepare($query);
      $stmt->bindParam('email', $user, PDO::PARAM_STR);
      $stmt->bindValue('pwd', $pass, PDO::PARAM_STR);
      $stmt->execute();
      $count = $stmt->rowCount();
      $row   = $stmt->fetch(PDO::FETCH_ASSOC);
      if($count == 1 && !empty($row))
      {

        header('Location: '."dashboard.html");
      }
      else{
        header('Location: '."index.html");
      }
    } catch (PDOException $e) {
      echo "Error : ".$e->getMessage();
    }
  } else {
    echo "Both fields are required!";
}
?>
