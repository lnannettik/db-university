<?php
require_once __DIR__ . '/database.php';

//RUN SQL QUERY
$sql = "SELECT *
        FROM `departments`";
$results = $conn->query($sql);

$departments = [];

if($results && $results->num_rows > 0) {
    while($row = $results->fetch_assoc()) {
        $departments[] = $row;
    }
} else {
    echo 'Query error';
}

// Close DB connection
$conn->close();bfgdn fhhnrf ndrhrrydnhn