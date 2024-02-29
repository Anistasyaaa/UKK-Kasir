<?php

$server = 'localhost';
$username = 'root';
$password = '';
$database = 'ukk';

$koneksi = mysqli_connect ($server, $username, $password, $database);

if (!$koneksi) {
    die("<script>alert('Tidak terhubung dengan database')</script>");
}
?>