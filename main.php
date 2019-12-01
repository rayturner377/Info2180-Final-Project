<?php

  $host = 'localhost';
  $username = 'info2180_user';
  $password = '';
  $dbname = 'db';

  try{
      $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
      $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  }
  catch(PDOException $e){
      echo $e;
  }

  session_start();

  function isuser($conn, $uid){
      $log = "SELECT * FROM Users;";
      $q = $conn->query($log);
      $result = $q->fetchAll(PDO::FETCH_ASSOC);

      foreach($result as $r){
          if ($uid == $r["id"]){
              return true;
          }
      }
      return false;
  }

  function findemail($conn, $id){
    $log = "SELECT * FROM User WHERE email ='$id';";
    $q = $conn->query($log);
    $result = $q->fetchAll(PDO::FETCH_ASSOC);
    return $result[0]["email"];
  }

  function finduserid($conn, $email){
    $log = "SELECT * FROM User WHERE email ='$email';";
    $q = $conn->query($log);
    $result = $q->fetchAll(PDO::FETCH_ASSOC);
    return $result[0]["id"];
}


?>
