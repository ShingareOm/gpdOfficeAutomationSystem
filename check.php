<?php
// Enable error reporting
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Database connection
$db_host = "localhost";
$db_user = "root";
$db_password = "";
$db_name = "tms_db";

// Create connection
$db = new mysqli($db_host, $db_user, $db_password, $db_name);

// Check connection
if ($db->connect_error) {
    die("Database connection failed: " . $db->connect_error);
}

// Define email and password (replace with actual values)
$email = "example@example.com";
$password = "password";

// Prepare and execute the query
$qry = $db->query("SELECT *, CONCAT(user_name, ' ', user_surname) AS name FROM gpd_users WHERE user_email = 'omshingare@admin.com' AND user_password = 'e807f1fcf82d132f9bb018ca6738a19f'");

if ($qry->num_rows > 0) {
    // Fetch data from the result set
    while ($row = $qry->fetch_assoc()) {
        foreach ($row as $key => $value) {
            if ($key !== 'user_password' && !is_numeric($key)) {
                echo $key . ": " . $value . "<br>";
            }
        }
    }
} else {
    echo "No records found.";
}

// Close the database connection
$db->close();
?>
