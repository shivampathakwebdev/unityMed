
<!DOCTYPE html>
 <?php #include("func.php");?>
 
<html>
<head>
	<title>Hospital Details</title>
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>
<?php
include("newfunc.php");
if(isset($_POST['hospital_search_submit']))
{
	$email=$_POST['hospital_email'];
  $query = "select * from hospital where hospital_email= '$email'";
  $result = mysqli_query($con,$query);
  $row=mysqli_fetch_array($result);
  if($row['hospital_name']=="" & $row['hospital_contact']=="" & $row['hospital_add']=="" & $row['hospital_email']=="" ){
    echo "<script> alert('No entries found!'); 
          window.location.href = 'admin-panel1.php#list-doc';</script>";
  }
  else {
    echo "<div class='container-fluid' style='margin-top:50px;'>
	<div class ='card'>
	<div class='card-body' style='background-color:#342ac1;color:#ffffff;'>
<table class='table table-hover'>
  <thead>
    <tr>
    <th>Hospital Name</th>
    <th scope=' col=>Hospital Name</th>
    <th scope='col>Contact No</th>
    <th>Hospital Address</th>
    <th scope='col>Address </th>
    <th>Email</th>
    <th scope='col>&nbsp;&nbsp;&nbsp;</th>
    <th>
    &nbsp;Hospital E-mail
    </th>
    <th scope='col>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password</th>
    <th>
    <th scope='col> Password</th>
    <th>
    Confirm Password
    </th>
    </tr>
  </thead>
  <tbody>";

	// while ($row=mysqli_fetch_array($result)){
        $hospital_name = $row['hospital_name'];
        $contact = $row['hospital_contact'];
        $add = $row['hospital_add'];
        $email = $row['hospital_email'];
        $password = md5($row['hospital_password']);
        $cpassword = $row['hospital_cpassword'];
        echo "<tr>
        <td>$hospital_name</td>
        <td>$contact</td>
        <td>$add<td>
        <td>$email</td>
        <td>$password</td>
        <td>$cpassword</td>
        </tr>";
	// }
	echo "</tbody></table><center><a href=href='admin-panel1.php' class='btn btn-light'>Back to Dashboard </a></div></center></div></div></div>";
}
  }
	

?>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script> 
</body>
</html>