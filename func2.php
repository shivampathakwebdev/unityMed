<?php
session_start();
$con=mysqli_connect("localhost","root","","myhmsdb");
if(isset($_POST['patsub1'])){
	$fname=$_POST['fname'];
  $lname=$_POST['lname'];
  $gender=$_POST['gender'];
  $email=$_POST['email'];
  $contact=$_POST['contact'];
	$password=$_POST['password'];
  $cpassword=$_POST['cpassword'];
  if($password==$cpassword){
  	$query="insert into patreg(fname,lname,gender,email,contact,password,cpassword) values ('$fname','$lname','$gender','$email','$contact','$password','$cpassword');";
    $result=mysqli_query($con,$query);
    if($result){
        $_SESSION['username'] = $_POST['fname']." ".$_POST['lname'];
        $_SESSION['fname'] = $_POST['fname'];
        $_SESSION['lname'] = $_POST['lname'];
        $_SESSION['gender'] = $_POST['gender'];
        $_SESSION['contact'] = $_POST['contact'];
        $_SESSION['email'] = $_POST['email'];
        header("Location:admin-panel.php");
    } 

    $query1 = "select * from patreg;";
    $result1 = mysqli_query($con,$query1);
    if($result1){
      $_SESSION['pid'] = $row['pid'];
    }

  }
  else{
    header("Location:error1.php");
  }
}
if(isset($_POST['update_data']))
{
	$contact=$_POST['contact'];
	$status=$_POST['status'];
	$query="update appointmenttb set payment='$status' where contact='$contact';";
	$result=mysqli_query($con,$query);
	if($result)
		header("Location:updated.php");
}




// function display_docs()
// {
// 	global $con;
// 	$query="select * from doctb";
// 	$result=mysqli_query($con,$query);
// 	while($row=mysqli_fetch_array($result))
// 	{
// 		$name=$row['name'];
// 		# echo'<option value="" disabled selected>Select Doctor</option>';
// 		echo '<option value="'.$name.'">'.$name.'</option>';
// 	}
// }

if(isset($_POST['doc_sub']))
{
	$name=$_POST['name'];
	$query="insert into doctb(name)values('$name')";
	$result=mysqli_query($con,$query);
	if($result)
		header("Location:adddoc.php");
}

