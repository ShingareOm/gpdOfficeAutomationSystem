<?php
include 'db_connect.php';

// Fetch user data
$qry = $conn->query("SELECT * FROM gpd_users where user_id = ".$_GET['id'])->fetch_array();
foreach($qry as $k => $v){
    $$k = $v;
}

if ($user_type_id == 2 || $user_type_id == 3) {
	# code...

	$table_name = "";
	if ($user_type_id == 2) {
		$table_name = "gpd_teacher";
	} elseif ($user_type_id == 3) {
		$table_name = "gpd_hod";
	}

	// Execute SQL query to fetch department_id
	if (!empty($table_name)) {
		$sql = "SELECT department_id FROM $table_name WHERE user_id = ".$_GET['id'];
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			// Output department_id`
			$row = $result->fetch_assoc();
			$department_id = $row['department_id'];
		} else {
			echo "No department found for this user.";
		}
	} else {
		echo "No table name determined.";
	}
}

// Include additional PHP file
include 'new_user.php';
?>
