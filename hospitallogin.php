<?php
session_start();
$con = mysqli_connect("localhost", "root", "", "myhmsdb");

if (isset($_POST['login'])) {
    $hospital_name = $_POST['hospital_name'];
    $password = md5($_POST['password']); // Hashing password using MD5

    $sql_login = "SELECT * FROM `hospital` WHERE `hospital_name`='$hospital_name'";
    $result = mysqli_query($con, $sql_login);
    
    if ($result && mysqli_num_rows($result) == 1) {
        $row = mysqli_fetch_assoc($result);
        $hashed_password = $row['hospital_password'];

        // Compare hashed passwords
        if ($password === $hashed_password) {
            // Login successful
            $_SESSION['usernameh'] = $_POST['hospital_name'];
            $_SESSION['hospital_name'] = $_POST['hospital_name'];
            $_SESSION['add'] = $_POST['hospital_add'];
            $_SESSION['contact'] = $_POST['contact'];
            $_SESSION['email'] = $_POST['email'];
            header("Location: hospital-panel.php"); // Redirect to admin page
            exit();
        } else {
            // Login failed
            echo "Invalid email or password.";
        }
    } else {
        // Login failed
        echo "Invalid email or password.";
    }
}
