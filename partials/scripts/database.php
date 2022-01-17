<?php
// Setup
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', 'root');
define('DB_NAME', 'university');

// Connessione
$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
var_dump($conn);

// check
if($conn->connect_error) {
    die('Si è verificato un errore.');
}