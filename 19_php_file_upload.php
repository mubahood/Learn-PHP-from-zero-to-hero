<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>File Uploading</title>
</head>

<body>

    <form action="19.1_php_file_upload.php" method="POST" enctype="multipart/form-data">
        <p>Select file to upload</p>
        <input type="file" name="photo" accept=".png,.jpeg,.jpeg,.gif">
        <br>
        <br>
        <button type="submit">SUBMIT</button>

    </form>
</body>

</html>