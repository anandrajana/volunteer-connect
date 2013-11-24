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



mysqli_close($DB_CONN);
?>
<h1>Volunteer Connect - <?php echo $ngo["name"];?> NGO </h1>
<table>
	<tr><td>Name</td><td><?php echo $ngo["name"] ?></td></tr>
   	<tr><td>Description</td><td><?php echo $ngo["description"] ?></td></tr>
	<tr><td>Sectors</td><td><?php echo $ngo["sectors"] ?></td></tr>
	<tr><td>Contact Person</td><td><?php echo $ngo["contact_person"] ?></td></tr>
	<tr><td>Address</td><td><?php echo $ngo["address"] ?></td></tr>
	<tr><td>Mobile</td><td><?php echo $ngo["mobile"] ?></td></tr>
	<tr><td>Email</td><td><?php echo $ngo["email"] ?></td></tr>
	<tr><td>Website</td><td><?php echo $ngo["website"] ?></td></tr>
	
</table>