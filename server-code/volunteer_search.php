<?php
include_once("db_connect.php");
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');
$search = $_REQUEST['search'];
//echo "search:$search<br>";
$query = "SELECT * FROM volunteer WHERE "
	. " name like '%".$search."%' "
	. " or address like '%".$search."%' "
	. " or interests like '%".$search."%' "
	. " or description like '%".$search."%' " ;
	
//echo "query:$query<br>";
$result = mysqli_query($DB_CONN,$query) or die("can not executer query:$query");
//echo "<h1>NGO</h1>";
$ngos = array();
while($row = mysqli_fetch_array($result))
  {
	$ngo = array("id"=>$row["id"], "name"=>$row["name"]
		, "interests" => $row["interests"]
		, "hours_week" => $row["hours_week"]
		);
	$ngos[] = $ngo;
  }

mysqli_close($DB_CONN);

echo json_encode($ngos);
?>