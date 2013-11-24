<?php
include_once("db_connect.php");

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');

$ngoId = $_REQUEST['id'];
$query = "select * from ngo where id=$ngoId";
//echo "query:$query<br>";
$result = mysqli_query($DB_CONN,$query) or die("can not executer query:$query");

//echo "<h1>Ngo Details</h1>";
$ngo = array();
if($row = mysqli_fetch_array($result)){
 $ngo["id"] = $row["id"];
 $ngo["name"] = $row["name"];
 $ngo["description"] = $row["description"];
 $ngo["sectors"] = $row["sectors"];
 $ngo["contact_person"] = $row["contact_person"];
 $ngo["website"] = $row["website"];
 $ngo["email"] = $row["email"];
 $ngo["mobile"] = $row["mobile"];
 $ngo["address"] = $row["address"];
 $ngo["keywords"] = $row["keywords"];
 
}

echo json_encode($ngo);

mysqli_close($DB_CONN);
?>