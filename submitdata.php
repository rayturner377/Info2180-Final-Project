<?php
if( isset( $_POST['btn'] ) )
{
    $fName = $_POST['firstname'];
    $lName = $_POST['lastname'];
    $password = $_POST['password'];
    $emailAddress = $_POST['emailaddress'];
    
    $password_digest = md5($password);

    $connect = new PDO('mysql:host=localhost;dbname=db;', 'root', '');
    $insertData = "INSERT INTO Users (`firstname`, `lastname`, `password`, `email`, `date_joined`)
    VALUES ('$fName','$lName','$password_digest','$emailAddress','2019-10-20 12:30:00')";
    
    $stmt = $connect->query($insertData);
    $stmt = $connect->query("SELECT * FROM Users");
    $results = $stmt ->fetchALL(PDO ::FETCH_ASSOC);

    echo "Submitted Successfully";
        
}

?>