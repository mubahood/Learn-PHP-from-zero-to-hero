<?php

$target = "uploads/";
$file_path = $target . $_FILES['photo']['name'];

if (move_uploaded_file($_FILES['photo']['tmp_name'], $file_path)) {
    echo "<h2>File uploaded successfully</h2>";
    echo '<img width="300" src="' . $file_path . '">';
} else {
    echo "Failed to upload the file.";
}
