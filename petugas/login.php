<?php 
include "../koneksi/koneksi.php";

error_reporting(0);
session_start();
if(isset($_SESSION['username'])) {
    echo "<script>alert('Maaf, anda sudah login. Silahkan logout terlebih dahulu'); window.location.replace('index.php')</script>";
}
if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = md5($_POST['password']);

    $sql = "SELECT * FROM user WHERE username='$username' AND password='$password'";
    $result = mysqli_query($koneksi, $sql);

    if ($result->num_rows > 0) {
        $row = mysqli_fetch_assoc($result);

        //mengambil informasi level dari hasil kueri
        $level = $row['level'];
        
        $_SESSION['username'] = $row['username'];
        $_SESSION['level'] = $level;

        header("Location: index.php");        
        echo "<script>alert('Berhasil Masuk!')</script>";
    } else {
        echo "<script>alert('Username atau password Anda salah. Silahkan coba lagi!')</script>";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>

    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header"> 
                        <h3 class="text-center">Login</h3>
                    </div>
                    <div class="card-body">
                        <form action="" method="post">
                            <div class="mb-3 mt-3">
                                <label for="" class="form-label">Nama</label>
                                <input type="text" name="username" class="form-control" required autofocus>
                            </div>
                             <div class="mb-3 mt-3">
                                <label for="" class="form-label">Password</label>
                                <input type="password" name="password" class="form-control" required>
                             </div>
                             <button type="submit" name="submit" class="btn btn-primary">login</button>
                        </form>
               </div>
            </div>
        </div>
    </div>

<script src="../assets/bootstrap.min.css"></script>
<script src="../assets/jquery.min.js"></script>
    
</body>
</html>