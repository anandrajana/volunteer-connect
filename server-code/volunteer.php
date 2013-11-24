<?php
include_once("db_connect.php");

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');

$id = $_REQUEST['id'];
$query = "select * from volunteer where id=$id";
//echo "query:$query<br>";
$result = mysqli_query($DB_CONN,$query) or die("can not executer query:$query");

//echo "<h1>Ngo Details</h1>";
$v = array();
if($row = mysqli_fetch_array($result))
{
	$v['id'] = $row['id'];
	$v['name'] = $row['name'];
	$v['interests'] = $row['interests'];
	$v['hours_week'] = $row['hours_week'];
	$v['description'] = $row['description'];	 
	$v['email'] = $row['email'];
	$v['phone'] = $row['phone'];
	$v['address'] = $row['address'];
		 
}

echo json_encode($v);
mysqli_close($DB_CONN);
?>