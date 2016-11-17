<?php

$host = "localhost";
$user = "root";
$password = "coderslab";
$database = "api_db";

$conn = new mysqli($host, $user, $password, $database);

if ($conn->connect_error) {
    die("Blad logowania: $conn->connect_error");
} else {
    //echo "Zalogowales sie <br>";
}
?>

