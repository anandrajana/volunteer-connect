<?php
include_once("db_connect.php");

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');

$query = "select * from volunteer";
//echo "query:$query<br>";
$result = mysqli_query($DB_CONN,$query) or die("can not executer query:$query");
$vs = array();
while($row = mysqli_fetch_array($result))
  {
	$v = array("id"=>$row["id"], "name"=>$row["name"]
		, "interests" => $row["interests"]
		, "hours_week" => $row["hours_week"]
		);
	$vs[] = $v;
  }

echo json_encode($vs);


mysqli_close($DB_CONN);
?>