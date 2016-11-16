function addBook(event) {
    event.preventDefault();
    var postForm = {
        title: $('input[name=title]').val(),
        author: $('input[name=author]').val(),
        description: $('textarea').val()
    };

    $.ajax({
        url: "src/books.php",
        data: postForm,
        type: "POST",
        dataType: "json"
    })
            .done(function (json) {
                //$( "#books" ).load( "index.php #books" , bookList());
                window.location.reload(true);
            })

            .fail(function () {
                alert("Sorry, there was a problem!");

            });

}

function editBook(event) {
    event.preventDefault();
    var postForm = {
        id: $(this).closest('.description').parent().data('id'),
        title: $('.edit input[name=title]').val(),
        author: $('.edit input[name=author]').val(),
        description: $('.edit textarea').val()
    };
    
     $.ajax({
        url: "src/books.php",
        data: postForm,
        type: "PUT",
        dataType: "json"
    })
            .done(function (json) {
                window.location.reload(true);
            })

            .fail(function () {
                alert("Sorry, there was a problem!");

            });
}


function bookDescription() {
    $(this).children().fadeIn('slow');
//    Sprawdzam czy DIV został już załadowany
    if ($(this).children()["0"].lastChild == $(this).children()["0"].firstChild) {

        $.ajax({
            url: "src/books.php",
            data: 'id=' + $(this).data('id'),
            type: "GET",
            dataType: "json"
        })
                .done(function (json) {

                    var title = json.title.replace(/ /g, ".");
                    var div = $('.' + title + ' .description');
                    var editForm = "<p><form class='edit' action = '#' method = 'POST' >\n\
                                        <label> Edytuj książkę:\n\
                                         <br>\n\
                                            <input type = 'text' name = 'title' placeholder = 'Tytuł' >\n\
                                            <input type = 'text' name = 'author' placeholder = 'Autor' > <br>\n\
                                            <textarea  name = 'description' cols = '41' rows = '5' placeholder = 'Opis' ></textarea>\n\
                                            <br>\n\
                                            <button  class='editButton' type = 'submit' > Dodaj </button>\n\
                                        </label>\n\
                                      </form></p>";
                    var description = $("<p>Autor: " + json.author + "<br>\n\
\n\                                         Opis: " + json.description + "<br>\n\
                                          " + editForm + "\n\
                                          <p class='hide' align='right'>Ukryj</p>");

                    div.append(description);

                    $('.hide').click(function (e) {
                        e.stopPropagation();
                        $(this).parent().fadeOut('slow');
                    });
                    $('.editButton').click(editBook);
                })

                .fail(function () {
                    alert("Sorry, there was a problem!");

                });
    }
}



function bookDelete() {
    $.ajax({
        url: "src/books.php",
        data: 'id=' + $(this).val(),
        type: "DELETE",
        dataType: "json"
    })
            .done(function (json) {

                location.reload(true);
            })

            .fail(function () {
                alert("Sorry, there was a problem!");

            });

}

$(document).ready(function () {

    $('button').click(addBook);

    $.ajax({
        url: "src/books.php",
        data: {},
        type: "GET",
        dataType: "json"
    })
            .done(function (json) {

                var books = json;

                $.each(books, function (id, title) {
                    var book = $("<button type='button' 'name='id' value=" + id + ">Usuń</button><div class='" + title + "' data-id='" + id + "''>" + title + "<div class='description' style='border:1px solid black'>Opis:</div></div>");
                    $('.books').append(book);
                });

                $('.description').css('display', 'none');

                var title = $('.books button');
                title.click(bookDelete);

                var title = $('.books div');
                title.click(bookDescription);
            })

            .fail(function () {
                alert("Sorry, there was a problem!");

            });

});


