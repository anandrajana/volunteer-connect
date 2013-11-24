<?php
include_once("constants.php");
$DB_CONN=mysqli_connect(DB_HOST,DB_USER,DB_PWD,DB_NAME) or die("can not connect to db");

// Check connection
if (mysqli_connect_errno($con))
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }else{
  //echo "connected succesfully";
  }
?>
