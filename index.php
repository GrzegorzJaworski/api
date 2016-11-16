<?php

?>

<!DOCTYPE html>
<html>
    <head>
        <script src="src/jquery-3.1.1.min.js" type="text/javascript"></script>
        <script src="src/app.js" type="text/javascript"></script>
    </head>
    <body>
        <div id="new_book" align="center">
            <form action="#" method="POST">
                <label>Dodaj książkę:
                    <br>
                    <input type="text" name="title" placeholder="Tytuł">
                    <input type="text" name="author" placeholder="Autor"><br>
                    <textarea  name="description" cols="68" rows="5" placeholder="Opis"></textarea>
                    <br>
                    <button type="submit">Dodaj</button>
                </label>
            </form>
        </div>
        <br>
        <hr>
        <div id="books" class="books" align="center">
        </div>
    </body>
</html>


