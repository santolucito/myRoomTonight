<?php
$conn = new Mongo();
$db = $conn->selectDB('testdb');
$collection = $db->users;
?>
