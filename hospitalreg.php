<?php
session_start();
$con=mysqli_connect("localhost","root","","myhmsdb");
if(isset($_POST['register'])){
    $hospital_name=$_POST['hospital_name'];
    $add=$_POST['hospital_add'];
    $contact=$_POST['contact'];
    $email=$_POST['email'];
    $password=md5($_POST['password']);
    $cpassword=$_POST['cpassword'];
    if($password==$cpassword){
        $sql_hospital_insert="INSERT INTO `hospital`(`hospital_name`,`hospital_add`, `hospital_contact`, `hospital_email`, `hospital_password`, `hospital_cpassword`) VALUES ('$hospital_name','$add','$contact','$email','$password','$cpassword')";
        $x= mysqli_query($con,$sql_hospital_insert);
        if ($x==true)
        $_SESSION['usernameh'] = $_POST['hospital_name'];
        $_SESSION['hospital_name'] = $_POST['hospital_name'];
        $_SESSION['add'] = $_POST['hospital_add'];
        $_SESSION['contact'] = $_POST['contact'];
        $_SESSION['email'] = $_POST['email'];
        header("Location:adminhu.html");
    }

}