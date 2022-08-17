<?php


if (isset($_GET['name'])) {

    $name = $_GET['name'];
    $country = $_GET['country'];
    $age = $_GET['age'];

    echo "<h4>Your name is $name, you are $age years old and you come from $country.</h4>";
}


?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FORM GET</title>
</head>

<body>
    <form method="GET">
        <input type="text" name="name" placeholder="Full name">
        <br>
        <br>
        <input type="text" name="country" placeholder="Country">
        <br>
        <br>
        <input type="number" name="age" placeholder="Age">
        <br>
        <br>
        <button type="submit">SUBMIT</button>
    </form>
</body>

</html>