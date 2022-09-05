<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>Задание 1</title>
</head>
<body>
    <form id="Form" action="#" method="GET">
        <input id="Search" type="text" name="search" list="Hints">
        <datalist id="Hints" style="visibility: hidden;">
        </datalist>
    </form>
    <script type="text/javascript">
        $('#Search').keyup(() => {
            if($('#Search').val().length >= 3) {
                $.post('search.php', {'searchName': document.getElementById('Search').value}, data => {
                    if (data != '') {
                        data = JSON.parse(data)
                        let hints = []
                        if (data.length != 0)
                        {
                            data.forEach(value => {
                                hints.push('<option value="'+value+'"></option>')
                            })
                            hints = hints.join("\n")
                            console.log(hints)
                            document.getElementById('Hints').innerHTML = hints
                        }
                    }
                })
            }
        })
    </script>
</body>
</html>