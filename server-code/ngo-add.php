	 1	id	int(11)			No	None	AUTO_INCREMENT	 Change Change	 Drop Drop	Show more actions More
	 2	name	varchar(500)	utf8_unicode_ci		No	None		 Change Change	 Drop Drop	Show more actions More
	 3	logo	varchar(1000)	utf8_unicode_ci		No	None		 Change Change	 Drop Drop	Show more actions More
	 4	description	text	utf8_unicode_ci		No	None		 Change Change	 Drop Drop	Show more actions More
	 5	address	varchar(1000)	utf8_unicode_ci		No	None		 Change Change	 Drop Drop	Show more actions More
	 6	sectors	varchar(1000)	utf8_unicode_ci		No	None		 Change Change	 Drop Drop	Show more actions More
	 7	keywords	varchar(1000)	utf8_unicode_ci		No	None		 Change Change	 Drop Drop	Show more actions More
	 8	website	varchar(1000)	utf8_unicode_ci		No	None		 Change Change	 Drop Drop	Show more actions More
	 9	contact_person	varchar(1000)	utf8_unicode_ci		No	None		 Change Change	 Drop Drop	Show more actions More
	 10	email	varchar(1000)	utf8_unicode_ci		No	None		 Change Change	 Drop Drop	Show more actions More
	 11	mobile	varchar(20)	utf8_unicode_ci		No	None		 Change Change	 Drop Drop	Show more actions More


	 <?php
include_once("db_connect.php");

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');

$name = $_REQUEST['name'];
$description = $_REQUEST['description'];
$address = $_REQUEST['address'];
$sectors = $_REQUEST['sectors'];
$keywords = $_REQUEST['keywords'];
$contactPerson = $_REQUEST['contact_person'];
$mobile = $_REQUEST['mobile'];
$email = $_REQUEST['email'];
$website = $_REQUEST['website'];

//http://toprecur.com/socialimpact/ngo_add.php?name=knowledgeforall&description=knowledge&address=bangalore&sectors=education&keywords=teaching&contact_person=ikbhal&mobile=9901014560&email=iqbalforall@gmail.com&website=iqbalforall.com

$query = "insert into ngo(name, description, address, sectors, keywords, contact_person, mobile, email, website) "
		. " values( '". $name . "'"
		. ", '" . $description . "'"
		. ", '" . $address . "'"
		. ", '" . $sectors . "'"
		. ", '" . $keywords . "'"
		. ", '" . $contactPerson . "'"
		. ", '" . $mobile . "'"
		. ", '" . $email . "'"
		. ", '" . $website . "'"
		. ")";
	
echo "query:$query<br>";
$result = mysqli_query($DB_CONN,$query) or die("can not executer query:$query");
mysqli_close($DB_CONN);

$result = array("status" => "success");
echo json_encode($result);
?>