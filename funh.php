<?php
session_start();
$con=mysqli_connect("localhost","root","","myhmsdb");
if(isset($_POST['submit'])){
	$hname=$_POST['hname'];
  $email=$_POST['email'];
  $contact=$_POST['contact'];
	$password=$_POST['password'];
  $cpassword=$_POST['cpassword'];
  if($password==$cpassword){
  	$query="insert into hosreg(hname,email,contact,password,cpassword) values ('$hname','$email','$contact','$password','$cpassword');";
    $result=mysqli_query($con,$query);
    if($result){
        $_SESSION['username'] = $_POST['hname'];
        $_SESSION['hname'] = $_POST['hname'];
        $_SESSION['contact'] = $_POST['contact'];
        $_SESSION['email'] = $_POST['email'];
        header("Location:admin-panel.php");
    } 

    $query1 = "select * from hosreg;";
    $result1 = mysqli_query($con,$query1);
    if($result1){
      $_SESSION['hid'] = $row['hid'];
    }

  }
  else{
    header("Location:error1.php");
  }
}
