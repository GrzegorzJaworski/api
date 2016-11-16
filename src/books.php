<?php

include 'book.php';
include 'dbConnect.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $title = $conn->real_escape_string($_POST['title']);
    $author = $conn->real_escape_string($_POST['author']);
    $description = $conn->real_escape_string($_POST['description']);
    $book = new Book();
    $book = $book->create($conn, $title, $author, $description);
    echo json_encode('$book');
    $conn->close();
    $conn = null;
}

if ($_SERVER['REQUEST_METHOD'] == 'GET') {

    if (isset($_GET['id']) && trim($_GET['id']) != "" && is_numeric($_GET['id'])) {
        $book = Book::loadFromDbById($conn, $_GET['id']);
        $serializedData = json_encode($book);
        echo $serializedData;
        $conn->close();
        $conn = null;
    } else {
        $books = Book::loadFromDB($conn);
        $serializedData = json_encode($books);
        echo $serializedData;
        $conn->close();
        $conn = null;
    }
}

if ($_SERVER['REQUEST_METHOD'] == 'DELETE') {

    parse_str(file_get_contents("php://input"), $del_vars);
    $book = Book::loadFromDbById($conn, $del_vars['id']);
    $book->deleteFromDB($conn);
    echo json_encode('usuniety');
    $conn->close();
    $conn = null;
}

if ($_SERVER['REQUEST_METHOD'] == 'PUT') {

    parse_str(file_get_contents("php://input"), $put_vars);
    $book = Book::loadFromDbById($conn, $put_vars['id']);
    $title = $conn->real_escape_string($put_vars['title']);
    $author = $conn->real_escape_string($put_vars['author']);
    $description = $conn->real_escape_string($put_vars['description']);
    if ($title != "") {
        $book->setTitle($put_vars['title']);
    }
    if ($author != "") {
        $book->setAuthor($put_vars['author']);
    }
    if ($description != "") {
        $book->setDescription($put_vars['description']);
    }
    $book->update($conn);
    echo json_encode('edytowany');
    $conn->close();
    $conn = null;
}
?>