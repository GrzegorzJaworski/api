<?php

class Book implements JsonSerializable {

    private $id;
    private $title;
    private $author;
    private $description;

    function __construct() {
        $this->id = -1;
        $this->title = "";
        $this->author = "";
        $this->description = "";
    }

    public function jsonSerialize() {
        return [
            'id' => $this->id,
            'title' => $this->title,
            'author' => $this->author,
            'description' => $this->description
        ];
    }

    function getId() {
        return $this->id;
    }

    function getTitle() {
        return $this->title;
    }

    function getAuthor() {
        return $this->author;
    }

    function getDescription() {
        return $this->description;
    }

    function setTitle($title) {
        $this->title = $title;
    }

    function setAuthor($author) {
        $this->author = $author;
    }

    function setDescription($description) {
        $this->description = $description;
    }

    static public function loadFromDB($conn) {
        $sql = "SELECT * FROM `Books`";
        $books = [];

        $result = $conn->query($sql);

        if ($result && $result->num_rows > 0) {
            foreach ($result as $book) {
                $books[$book['id']] = $book['title'];
            }
            return $books;
        } else {
            return ('Brak książki o podanym id');
        }
    }

    static public function loadFromDbById($conn, $id) {

        $sql = "SELECT * FROM `Books` WHERE id= $id";
        $result = $conn->query($sql);

        if ($result && $result->num_rows == 1) {

            $book = $result->fetch_assoc();
            $loadBook = new Book();
            $loadBook->id = $book['id'];
            $loadBook->title = $book['title'];
            $loadBook->author = $book['author'];
            $loadBook->description = $book['description'];

            return $loadBook;
        } else {
            return ('Brak książki o podanym id');
        }
    }

    public function create($conn, $title, $author, $description) {

        $this->title = $title;
        $this->author = $author;
        $this->description = $description;

        $sql = "INSERT INTO `Books`(`id`, `title`, `author`, `description`) 
                VALUES (
                null, '$this->title','$this->author','$this->description')";

        $result = $conn->query($sql);

        if ($result) {
            return 'Ksiazka dodana';
        } else {
            return $conn->error;
        }
    }

    public function update($conn) {
        if ($this->id != -1) {

            $sql = "UPDATE Books 
                SET 
                title='$this->title',
                author='$this->author',
                description='$this->description'
                WHERE id=$this->id";

            $result = $conn->query($sql);

            if ($result) {
                
            } else {

                return($conn->error);
            }
        }
    }

    public function deleteFromDB($conn) {
        $sql = "DELETE FROM Books WHERE id=$this->id";
        $result = $conn->query($sql);

        if ($result) {
            return 'Usuniety';
        } else {
            return 'Blad';
        }
    }

}
?>

