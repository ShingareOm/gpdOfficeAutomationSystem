<?php
include 'db_connect.php';
$qry = $conn->query("SELECT * FROM gpd_letters where letter_id = '20'")->fetch_array();
foreach($qry as $k => $v){
	$$k = $v;
}
include 'new_letter.php';
?>